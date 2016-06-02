Rails.application.routes.draw do
  root :to => 'posts#index'
  devise_for :users, :skip => [:registrations], :controllers => { :invitations => 'users/invitations' }
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users/:id' => 'devise/registrations#update', :as => 'user_registration'
  end
  resources :users
  resources :posts
  get '/contacts' => 'contacts#index'
  resources :contacts
  get '/licences' => 'licences#index'
  resources :licences
  get '/cruises' => 'cruises#index'
  resources :cruises
  get '/pasts' => 'pasts#index'
  resources :pasts
end
