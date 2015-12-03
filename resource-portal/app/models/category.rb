class Category < ActiveRecord::Base
    #has_many :resources#, :through => :categories_resources
    has_and_belongs_to_many :resources
    def self.all_categories
        ["Food and Groceries", "Housing", "Employment"]
    end
end
