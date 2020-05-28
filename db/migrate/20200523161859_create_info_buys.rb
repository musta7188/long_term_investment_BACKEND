class CreateInfoBuys < ActiveRecord::Migration[6.0]
  def change
    create_table :info_buys do |t|
      t.string :summary
      t.string :big_picture
      t.string :why_to_buy
      t.string :leadership
      t.string :why_now
      t.string :risk
      t.string :investment_value
      t.integer :recommended_stock_id
      t.timestamps
    end
  end
end
