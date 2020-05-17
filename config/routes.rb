Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :portfolios
  # resources :stocks
  resources :recommended_stocks
  resources :recommendations
  # resources :portfolio_stocks

  get '/validate', to: "users#validate"
  post '/sign-in', to: "users#sign_in"
  get '/user-portfolios', to: "users#userportfolios"

  
end
