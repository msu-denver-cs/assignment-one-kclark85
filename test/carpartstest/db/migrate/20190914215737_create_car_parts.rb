class CreateCarParts < ActiveRecord::Migration[6.0]
  def change
    create_table :car_parts do |t|
      t.string :part
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
