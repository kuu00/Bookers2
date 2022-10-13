Rails.application.routes.draw do
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  get '/show/:id' => 'books#show'
  devise_for :users
  resources :users, only: [:new, :index, :create, :show, :edit]
  resources :books, only: [:new, :index, :create, :show, :edit, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end