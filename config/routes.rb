Rails.application.routes.draw do
  get 'documentary_films',to: 'documentary_films#index'
  post 'documentary_films',to: 'documentary_films#create'
  get 'documentary_films/new',to: 'documentary_films#new'

  resources :movies
  get 'series',to: 'series#index'
  post 'series',to: 'series#create'
  get 'series/new',to: 'series#new'
  resources :series
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "movies#index"
end
