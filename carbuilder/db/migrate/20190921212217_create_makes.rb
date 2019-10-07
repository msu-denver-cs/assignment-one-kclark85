class CreateMakes < ActiveRecord::Migration[5.2]
  def change
    create_table :makes do |t|
      t.string :name
      t.string :country
      t.string :car_id

      t.timestamps
    end
  end
end
