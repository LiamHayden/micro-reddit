Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
  resources :users, :posts, :comments
end
