Rails.application.routes.draw do
  resources :users
  root 'users#index'
  post 'follows', to: 'follows#create'
end
