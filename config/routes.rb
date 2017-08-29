Rails.application.routes.draw do
  get 'users/show', to: 'users#show'

  resources :favorites 
  
  devise_for :users
  root to: 'films#index'
  resources :films

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
