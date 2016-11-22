class RenameTypeToCategory < ActiveRecord::Migration[5.0]
  def change
    rename_column :bikes, :type, :category
  end
end
