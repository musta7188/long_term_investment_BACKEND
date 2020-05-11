Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :portfolios
  resources :stocks
  resources :recommended_stocks
  resources :recommendations
  resources :portfolio_stocks
end
