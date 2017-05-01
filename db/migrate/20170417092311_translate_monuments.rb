class TranslateMonuments < ActiveRecord::Migration[5.0]
  def self.up
    I18n.with_locale(:en) do
      Monument.create_translation_table!({
        :name => :string,
        :description => :text
      }, {
        :migrate_data => true,
        :remove_source_columns => true
      })
    end
  end

  def self.down
    Monument.drop_translation_table! :migrate_data => true
  end
end
