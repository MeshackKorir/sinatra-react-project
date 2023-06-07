class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :amount
      t.string :author
      t.integer :quantity
      t.timestamps
    end
  end
end
