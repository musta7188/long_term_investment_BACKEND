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


    def create 
      user = User.new(user_params)
    
      if user.save 
        render json: {user: user.name, token: generate_token({id: user.id}) }
        byebug
      else
        render json: {erros: user.errors.full_messages}
      end
    end


    def sign_in 
      user =   User.find_by(email: params[:email])

    
    if user && user.authenticate(params[:password])
      render json: {user: user.name, token: generate_token({id: user.id}) }
      
    else 
      render json: {message: "email or passowrd are wrong"}
    end
  end


  def validate 
  
   id  = decode_token

 
   user =  User.find_by(id: id)
  
   if user
    render json: {user: user.name, token: generate_token({id: user.id}) }

  else 
    render json: {message: "error"}
  end

  end


  def portfolios 
    id = decode_token 

    user = User.find_by(id: id)
    if user 
      render json: {portfolios: user.portfolios, token: generate_token({id: user.id})}
    else 
      render json: {message: "items not found "}
    end

  end

  private 

  def user_params 
    params.require(:user).permit(:name, :password_digest, :email)
  end


  end
