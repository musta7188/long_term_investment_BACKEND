class StocksController < ApplicationController



  def index 
    stocks = Stock.all 
    render json: stocks
  end

  def show 
    stock = Stock.find(params[:id])
    if stock
    render json: stock
    else  
      render json: {error: "stock not found"}
    end
  end

def destroy 
  stock = Stock.find(params[:id])
  if stock
    stock.destroy 
    render json: stock 
  else 
    render json: {error: " stock not found"}
  end
end


end
