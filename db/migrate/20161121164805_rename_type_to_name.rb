class RenameTypeToName < ActiveRecord::Migration[5.0]
  def change
    rename_column :accessories, :type, :name
  end
end
