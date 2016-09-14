class Category < ActiveRecord::Base
    # Connecting Categories to Resources, multiple of each can be linked
    has_and_belongs_to_many :resources
    
    # Returns all existing categories in the database
    def self.get_categories
        Category.all
    end
    
    # Returns all existing category names in the database
    def self.get_category_names
        Category.pluck("category_name")
    end
end
