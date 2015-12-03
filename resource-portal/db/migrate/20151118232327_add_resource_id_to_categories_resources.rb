class AddResourceIdToCategoriesResources < ActiveRecord::Migration
  def change
    add_column :categories_resources, :resource_id, :integer
  end
end
