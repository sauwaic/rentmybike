class RemovePictureUrlFromBikes < ActiveRecord::Migration[5.0]
  def change
    remove_column :bikes, :picture_url
  end
end
