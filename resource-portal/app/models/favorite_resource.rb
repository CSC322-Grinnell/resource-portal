class FavoriteResource < ActiveRecord::Base
    belongs_to :user
    belongs_to :resource
    
    validates_uniqueness_of :id
end
