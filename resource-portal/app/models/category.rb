class Category < ActiveRecord::Base
  validates :name, presence: true

  has_and_belongs_to_many :resources

  default_scope { order('name ASC') } # Returns resources in Alphabetaical order via names
end
