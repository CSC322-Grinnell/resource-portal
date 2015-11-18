class Resource < ActiveRecord::Base
    #has_many :categories#, :through => :categories_resources
    has_and_belongs_to_many :categories
end
