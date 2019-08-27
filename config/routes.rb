Rails.application.routes.draw do
  get 'attendances/create'
  get 'attendances/destroy'
  resources :users, only: [:new, :create, :show]
  resources :events, only: [:new, :create]
  get "/login", to: 'sessions#new'
  post "/logout", to: 'sessions#create'
  delete "/logout", to: 'sessions#destroy'

end
