class TranslateTowns < ActiveRecord::Migration[5.0]
  def self.up
    I18n.with_locale(:en) do
      Town.create_translation_table!({
        :name => :string,
      }, {
        :migrate_data => true,
        :remove_source_columns => true
      })
    end
  end

  def self.down
    Town.drop_translation_table! :migrate_data => true
  end
end
