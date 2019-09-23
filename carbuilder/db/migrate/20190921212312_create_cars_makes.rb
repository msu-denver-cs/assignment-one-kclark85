class CreateCarsMakes < ActiveRecord::Migration[5.2]
  def change
    create_table :cars_makes do |t|
      t.references :car, foreign_key: true
      t.references :make, foreign_key: true

      t.timestamps
    end
  end
end
