Rails.application.routes.draw do
  get 'projects/index'
  # Has many association
  root "categories#index"

  # Many to many association
  resources :users, only: :index
  resources :groups, only: :index

  # Multi-level counter-cache
  resources :projects, only: :index
end
