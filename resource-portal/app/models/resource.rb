class Resource < ActiveRecord::Base
   after_initialize :default_values
    #has_many :categories#, :through => :categories_resources
    has_and_belongs_to_many :category
    
    private
        def default_values
         self.status ||= 'Pending'
       end
end
