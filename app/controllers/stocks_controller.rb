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

def create 

  stock = Stock.new(stock_params )

  if stock.save
    
   render json: stock 
  else
    render  json: {message: stock.errors.full_message}
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

private 

def stock_params 
  params.require(:stock).permit(:symbol, :open, :units, :portfolio_id)
end

end
