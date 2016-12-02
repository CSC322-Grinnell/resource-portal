#require 'elasticsearch/model'
class Resource < ActiveRecord::Base
  after_initialize :default_values

  validates :name, :description_of_service, :address,
            presence: true
  validate :must_have_one_category

  has_and_belongs_to_many :categories
  
  has_many :favorite_resources
  has_many :favorited_by, through: :favorite_resources, source: :user
  
  geocoded_by :address
  after_validation :geocode, if: ->(obj){obj.address.present? and obj.address_changed?}

  default_scope { order('name ASC') } # Returns resources in Alphabetaical order via names

  acts_as_taggable_on :tags
  searchkick

  private

  def default_values
    self.status ||= 'Pending'
  end

  def must_have_one_category
    if (category_ids.length != 1)
      errors[:base] << 'You must select one category'
    end
  end
  
  def resource_params
    params.permit(:name_of_submitter, :tag_list)
  end
end

