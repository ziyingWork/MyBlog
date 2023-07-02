Rails.application.routes.draw do
  get 'accounts/signup', to: 'accounts#signup'
  get 'accounts/login', to: 'accounts#login'
  post 'login_method', to: 'accounts#login_method'
  get 'logout_method', to: 'accounts#logout_method'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'articles/lll', to: 'articles#lll'
  # post '/login', to: 'users#login', as: 'login'
  # Defines the root path route ("/")
  # root "articles#index"
  root "accounts#login"
  resources :articles 
  resources :accounts
end
