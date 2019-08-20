Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  resources :events, only: [:new, :create]
  get "/login", to: 'sessions#new'
  post "/logout", to: 'sessions#create'
  delete "/logout", to: 'sessions#destroy'

end
