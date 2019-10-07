class ChangeMakesName < ActiveRecord::Migration[5.2]
  def change
    rename_column :cars, :makes, :make
  end
end
