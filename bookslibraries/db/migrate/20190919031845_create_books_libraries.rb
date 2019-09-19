class CreateBooksLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :books_libraries do |t|
      t.references :book, foreign_key: true
      t.references :library, foreign_key: true

      t.timestamps
    end
  end
end
