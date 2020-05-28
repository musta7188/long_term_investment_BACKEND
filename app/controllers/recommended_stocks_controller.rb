class RecommendedStocksController < ApplicationController

  def index 
    recommendedStock = RecommendedStock.all 
    render json:  recommendedStock, include: :info_buy
  end
end




