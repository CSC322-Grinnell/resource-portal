class Resource < ActiveRecord::Base
  after_initialize :default_values

  validates :name, :description_of_service, :address, :contact_email,
            presence: true
  validate :must_have_one_category

  has_and_belongs_to_many :categories

  default_scope { order('name ASC') } # Returns resources in Alphabetaical order via names

  private

  def default_values
    self.status ||= 'Pending'
  end

  def must_have_one_category
    if !(category_ids.length > 0)
      errors[:base] << 'You must select at least one category'
    end
  end
end
