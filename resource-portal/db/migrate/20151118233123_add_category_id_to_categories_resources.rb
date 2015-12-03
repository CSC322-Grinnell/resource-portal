class AddCategoryIdToCategoriesResources < ActiveRecord::Migration
  def change
    add_column :categories_resources, :category_id, :integer
  end
end
