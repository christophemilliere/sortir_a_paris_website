class AddCategoryToMonuments < ActiveRecord::Migration[5.0]
  def change
    add_reference :monuments, :category, foreign_key: true
  end
end
