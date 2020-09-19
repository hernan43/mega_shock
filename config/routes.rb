Rails.application.routes.draw do
  devise_for :users

  get '/profile', to: 'users#profile', as: 'user_profile'
  get '/profile/edit', to: 'users#edit', as: 'edit_user_profile'
  patch '/profile/edit', to: 'users#update', as: 'update_user_profile'
  put '/profile/edit', to: 'users#update'

  root to: "base#index"
end
