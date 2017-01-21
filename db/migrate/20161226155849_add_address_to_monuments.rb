class AddAddressToMonuments < ActiveRecord::Migration[5.0]
  def change
    add_column :monuments, :address, :string
    add_column :monuments, :city, :string
    add_column :monuments, :zip_code, :integer
  end
end
