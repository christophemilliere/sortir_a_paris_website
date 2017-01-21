class AddUrlToMonuments < ActiveRecord::Migration[5.0]
  def change
    add_column :monuments, :url, :string
  end
end
