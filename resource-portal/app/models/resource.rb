class Resource < ActiveRecord::Base
   after_initialize :default_values
   # Validates correctly but difficulties in displaying the error
   # validates :website, :presence => true
   
    #has_many :categories#, :through => :categories_resources
    
    # Connecting Resources to Categories, multiple of each can be linked
    has_and_belongs_to_many :category
    
    private
        def default_values
         self.status ||= 'Pending'
       end
       
    # Resources must have a category to be created
    def must_have_one_category
      errors.add(:items, 'You must select at least one category') unless category_ids.detect { |i| i != "0" }
    end
end
