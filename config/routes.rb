Rails.application.routes.draw do
  get 'accounts/signup', to: 'accounts#signup'
  # get 'accounts/login'
  # get 'accounts/signup'
  # get 'articles/new'
  # get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'articles/lll', to: 'articles#lll'
  # post '/login', to: 'users#login', as: 'login'
  # Defines the root path route ("/")
  root "articles#index"
  resources :articles 
  resources :accounts


end
