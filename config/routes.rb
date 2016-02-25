Rails.application.routes.draw do
  devise_for :users
  root to: 'visitors#index'
 # get 'posts', to: 'appication#index'
end
