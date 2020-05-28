class PortfoliosController < ApplicationController



  def show 
    portfolio = Portfolio.find(params[:id])
    render json: portfolio, include: :stocks
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



  def destroy 
    portfolio = Portfolio.find(params[:id])
    if portfolio
      portfolio.destroy 
      render json: portfolio 
    else 
      render json: {error: " portfolio not found"}
    end
  end



end
