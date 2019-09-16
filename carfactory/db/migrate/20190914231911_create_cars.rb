class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :vin
      t.string :part

      t.timestamps
    end
  end
end
