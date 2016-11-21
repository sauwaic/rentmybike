class CreateBikes < ActiveRecord::Migration[5.0]
  def change
    create_table :bikes do |t|
      t.string :size
      t.string :gender
      t.string :type
      t.integer :gears
      t.string :picture_url
      t.string :condition
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
