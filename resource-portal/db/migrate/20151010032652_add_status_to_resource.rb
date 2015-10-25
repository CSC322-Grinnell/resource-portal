class AddStatusToResource < ActiveRecord::Migration
  def change
    add_column :resources, :status, :string
  end
end
