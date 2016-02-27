class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
<<<<<<< e44c7308fcfcc9ab4c20191c690a0ecb5927b033
  devise :invitable, :database_authenticatable, :recoverable, :rememberable, 
         :trackable, :validatable
=======
  
  
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable
>>>>>>> Add CanCan roles to user
                              ## Multi-level admin
  Roles = [ :admin, :default] ##Admin that can delete other admins, and admin that cannot
  
  def is?(requested_role)     
    self.role == requested_role.to_s
  end
end
