Rails.application.routes.draw do
  root :to => 'posts#index'
  devise_for :users
  resources :users
  resources :posts
  get '/contacts' => 'contacts#index'
  resources :contacts
  get '/licences' => 'licences#index'
  resources :licences
  get '/cruises' => 'cruises#index'
  resources :cruises
end
