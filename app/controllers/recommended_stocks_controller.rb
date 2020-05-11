class RecommendedStocksController < ApplicationController

  def index 
    recommendedStock = RecommendedStock.all 
    render json: recommendedStock
  end
end
