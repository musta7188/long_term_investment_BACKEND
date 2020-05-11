class PortfoliosController < ApplicationController

def index
  portfolios = Portfolio.all 
  render json: portfolios
end


  def show 
    portfolio = Portfolio.find(params[:id])
    render json: {portfolio: portfolio, stocks: portfolio.stocks}
  end
end
