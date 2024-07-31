class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.text :description
      t.string :icon_url
      t.string :css_icon_url
      t.timestamps
    end

    add_index :characters, :name, unique: true
  end
end