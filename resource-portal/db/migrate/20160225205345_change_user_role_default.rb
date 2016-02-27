class ChangeUserRoleDefault < ActiveRecord::Migration
  def change
    change_column :users, :role, :string, :default => "default"
  end
end
