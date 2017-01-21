class AddLngLatToMonuments < ActiveRecord::Migration[5.0]
  def change
    add_column :monuments, :lat, :float
    add_column :monuments, :lng, :float
  end
end
