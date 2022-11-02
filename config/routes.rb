Rails.application.routes.draw do
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  get '/show/:id' => 'books#show'
  patch 'users/:id' => 'users#update', as: 'update_user'
  devise_for :users
  resources :users, only: [:new, :index, :create, :show, :edit, :update, :destroy]
  resources :books, only: [:new, :index, :create, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end