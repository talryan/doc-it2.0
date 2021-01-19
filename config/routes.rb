Rails.application.routes.draw do

  resources :users
  resources :appointments

  resources :doctors do 
    resources :appointments 
  end


  resources :users
  root 'welcome#home'
  get '/signup' => 'users#new'
  post '/users/new' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
