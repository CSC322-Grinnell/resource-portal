class CreateFavoriteResources < ActiveRecord::Migration
  def change
    create_table :favorite_resources do |t|
      t.integer :resource_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
