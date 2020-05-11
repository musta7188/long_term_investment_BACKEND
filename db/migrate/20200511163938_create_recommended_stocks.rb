class CreateRecommendedStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :recommended_stocks do |t|
      t.integer :price
      t.string :symbol
      t.integer :recommendation_id
      t.timestamps
    end
  end
end
