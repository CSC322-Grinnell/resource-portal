class RenameResourcesCategoriesTable < ActiveRecord::Migration
  def change
    rename_table :resource_categories, :categories_resources
  end
end
