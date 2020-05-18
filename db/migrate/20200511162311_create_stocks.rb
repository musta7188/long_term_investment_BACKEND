class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.integer :open
      t.integer :units
      t.integer :portfolio_id
      t.timestamps
    end
  end
end
