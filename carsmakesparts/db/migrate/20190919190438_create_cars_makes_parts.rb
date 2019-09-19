class CreateCarsMakesParts < ActiveRecord::Migration[5.2]
  def change
    create_table :cars_makes_parts do |t|
      t.references :car, foreign_key: true
      t.references :make, foreign_key: true
      t.references :part, foreign_key: true

      t.timestamps
    end
  end
end
