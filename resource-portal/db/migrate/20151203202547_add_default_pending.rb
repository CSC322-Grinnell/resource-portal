class AddDefaultPending < ActiveRecord::Migration
  def change
    change_column :resources, :status, :default => 'Pending'
  end
end
