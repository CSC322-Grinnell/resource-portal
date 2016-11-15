class AddLongitudeAndLatitudeToResources < ActiveRecord::Migration
  def change
    add_column :resources, :latitude, :float
    add_column :resources, :longitude, :float
  end
end
