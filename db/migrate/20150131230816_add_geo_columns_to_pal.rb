class AddGeoColumnsToPal < ActiveRecord::Migration
  def change
    add_column :pals, :latitude, :float
    add_column :pals, :longitude, :float
  end
end
