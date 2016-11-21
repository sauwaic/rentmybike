class CreateBikeAccessories < ActiveRecord::Migration[5.0]
  def change
    create_table :bike_accessories do |t|
      t.references :bike, foreign_key: true
      t.references :accessory, foreign_key: true

      t.timestamps
    end
  end
end
