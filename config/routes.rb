Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'about/', to: 'about#index', as: "about"

  get 'register/', to: 'users#new'
  get 'login/', to: 'sessions#new'
  post 'login/', to: 'sessions#create'
  delete 'logout/', to: 'sessions#destroy'


  
  get 'toy-details/:id', to: 'my_toys#show'

  resources :users, except: [:new]
end
