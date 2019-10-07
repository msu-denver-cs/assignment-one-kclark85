class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :makes
      t.integer :vin

      t.timestamps
    end
  end
end
