class RemoveTimestampsFromCategoriesResources < ActiveRecord::Migration
  def change
    remove_column :categories_resources, :created_at, :datetime, null: false
    remove_column :categories_resources, :updated_at, :datetime, null: false
  end
end
