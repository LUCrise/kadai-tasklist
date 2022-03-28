Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  
  resources :tasks
  get 'signup', to: 'users#new'
  resources :users, only: [:create]
end
