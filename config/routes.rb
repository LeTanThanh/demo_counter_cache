Rails.application.routes.draw do
  root "categories#index"
  resources :users, only: :index
end
