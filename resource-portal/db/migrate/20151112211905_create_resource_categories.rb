#Ignore this migration 
class CreateResourceCategories < ActiveRecord::Migration
  def change
    create_table :resource_categories do |t|

      t.timestamps null: false
    end
  end
end
