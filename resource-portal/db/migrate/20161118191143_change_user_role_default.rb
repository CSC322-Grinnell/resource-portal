class ChangeUserRoleDefault < ActiveRecord::Migration
  def change
    change_column_default :users, :role, "default"
  end
end
