class AddColumnToBikes < ActiveRecord::Migration[5.0]
  def change
    add_column :bikes, :address, :string
  end
end
