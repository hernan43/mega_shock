Rails.application.routes.draw do
  devise_for :users
  
  get '/profile', to: 'base#profile', as: 'user_profile'

  root to: "base#index"
end
