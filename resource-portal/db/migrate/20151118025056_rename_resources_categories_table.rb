class RenameResourcesCategoriesTable < ActiveRecord::Migration
  def change
    rename_table :categories_resource, :categories_resources
  end
end
