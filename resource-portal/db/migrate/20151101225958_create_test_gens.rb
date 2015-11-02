class CreateTestGens < ActiveRecord::Migration
  def change
    create_table :test_gens do |t|
      t.string :game
      t.integer :score

      t.timestamps null: false
    end
  end
end
