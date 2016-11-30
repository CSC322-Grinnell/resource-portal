class Category < ActiveRecord::Base
  validates :name, presence: true

  has_and_belongs_to_many :resources
  
  acts_as_taggable 

  default_scope { order('name ASC') } # Returns resources in Alphabetaical order via names
    searchkick
    
    def self.get_categories
        Category.all
    end
    
    def self.get_category_names
        Category.pluck("category_name")
    end
end
