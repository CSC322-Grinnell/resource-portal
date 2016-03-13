require 'elasticsearch/model'

class Resource < ActiveRecord::Base
   # include Elasticsearch::Model
   # include Elasticsearch::Model::Callbacks
   searchkick #word_start: [:title]#suggest: [:title]
   #word_start: [:phone_number]# word_start: [:name] enables "back" to return search of "backpack"
   after_initialize :default_values
   # Validates correctly but difficulties in displaying the error
   # validates :website, :presence => true
   validate :must_have_one_category 
   has_and_belongs_to_many :category
    
    private
    
    def default_values
      self.status ||= 'Pending'
    end
    
   def must_have_one_category 
    if self.category_ids.blank?
      self.errors.add(:category_ids, "You must select at least one option.")
    end
  end
end

