Rails.application.routes.draw do
  root to: 'toppages#index'

  get "signup", to: "users#new" 
  resources :users, only: [:index, :new, :show, :create]

end
