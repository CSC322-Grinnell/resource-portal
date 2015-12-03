class RemoveCategoryFromResources < ActiveRecord::Migration
  def change
    remove_column :resources, :category, :string
  end
end
