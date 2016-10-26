class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :invitable, :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable
                              ## Multi-level admin
  Roles = [:admin, :default] ##Admin that can delete other admins, and admin that cannot
  
  def is?(requested_role)     
    self.role == requested_role.to_s
  end
end
