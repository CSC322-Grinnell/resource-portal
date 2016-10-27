class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
<<<<<<< HEAD
  devise :invitable, :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable
                              ## Multi-level admin
  Roles = [:admin, :default] ##Admin that can delete other admins, and admin that cannot
=======
  
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable
                              ## Multi-level admin
  Roles = [ :admin, :default] ##Admin that can delete other admins, and admin that cannot
>>>>>>> 1a89b8d485f789bed4f7c2036a4921aac1af1902
  
  def is?(requested_role)     
    self.role == requested_role.to_s
  end
end
