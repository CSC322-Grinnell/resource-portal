class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :recoverable, :rememberable, 
         :trackable, :validatable
         
  has_many :favorite_resources
  has_many :favorites, through: :favorite_resources, source: :resource
end
