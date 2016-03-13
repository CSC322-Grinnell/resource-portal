class Category < ActiveRecord::Base
    searchkick
    has_and_belongs_to_many :resources
    def self.get_categories
        Category.all
    end
    
    def self.get_category_names
        Category.pluck("category_name")
    end
end
