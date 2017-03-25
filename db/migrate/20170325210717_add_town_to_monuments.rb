class AddTownToMonuments < ActiveRecord::Migration[5.0]
  def change
    add_reference :monuments, :town, foreign_key: true
  end
end
