class AddColumnsToAccessories < ActiveRecord::Migration[5.0]
  def change
        add_column :accessories, :type, :string
  end
end
