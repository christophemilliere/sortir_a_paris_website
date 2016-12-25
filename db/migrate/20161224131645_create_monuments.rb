class CreateMonuments < ActiveRecord::Migration[5.0]
  def change
    create_table :monuments do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
