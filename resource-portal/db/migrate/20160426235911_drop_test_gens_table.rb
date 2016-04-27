class DropTestGensTable < ActiveRecord::Migration
  def change
    drop_table :test_gens
  end
end
