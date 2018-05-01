Rails.application.routes.draw do
  resources :users, only: [:edit, :update]
  resources :users, except: [:delete]

  match '/users','users#index'
  match '/users/:id','users#show', :get # i take parameter id
  #match '/users/id','users#show' #i wait id word
  post '/users','users#create', as: :give_me_users_create
  get '/users/new','users#create', as: :direct_me_to_new_user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #regular expression >>> custom route
  #this will generate 7 routes
end
