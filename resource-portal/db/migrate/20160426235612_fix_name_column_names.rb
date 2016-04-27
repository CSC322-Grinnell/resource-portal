class FixNameColumnNames < ActiveRecord::Migration
  def change
    rename_column :categories, :category_name, :name
    rename_column :resources, :title, :name
  end
end
