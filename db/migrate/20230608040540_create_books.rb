class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.integer :quantity
      t.integer :price
      t.timestamps
    end
  end
end
