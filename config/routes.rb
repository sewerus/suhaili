Rails.application.routes.draw do
  root :to => 'posts#index'
  devise_for :users
  resources :users
  resources :posts
  get '/contacts' => 'contacts#index'
  resources :contacts
end
