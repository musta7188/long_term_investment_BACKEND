class PortfoliosController < ApplicationController



  def show 
    portfolio = Portfolio.find(params[:id])
    render json: {portfolio: portfolio, stocks: portfolio.stocks}
  end

  def create 
    user = User.find(decode_token )
   
    portfolio = user.portfolios.build(name: params[:name])

    if portfolio.save 
      
      render json: { portfolio: portfolio}

    else 
      redner json: { message: portfolio.errors.full_message}

    end
  end
end
