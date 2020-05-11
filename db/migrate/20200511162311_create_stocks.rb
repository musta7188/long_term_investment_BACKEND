class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.integer :price
      t.timestamps
    end
  end
end
