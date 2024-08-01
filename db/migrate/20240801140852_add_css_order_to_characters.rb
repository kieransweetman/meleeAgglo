class AddCssOrderToCharacters < ActiveRecord::Migration[7.1]
  def change
    add_column :characters, :position, :integer
  end
end
