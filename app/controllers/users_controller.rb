class UsersController < ApplicationController

  def index
    users = User.all 
    render json: users
  end

  def show 
    user = User.find(params[:id])
    if user
      render json: {user: user, portfolios: user.portfolios}
    else
      render json:  {status: 500, error: user.errors.full_messages}
    end
  end


end
