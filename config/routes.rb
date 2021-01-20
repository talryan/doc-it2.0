Rails.application.routes.draw do

  resources :users
  resources :appointments

  resources :doctors do 
    resources :appointments, shallow:true 
  end


  resources :users
  root 'welcome#home'
  get '/signup' => 'users#new'
  post '/users/new' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/auth/:provider/callback' => 'sessions#omniauth'
  delete '/logout' => 'sessions#destroy'

  get '/auth/:provider/callback' => 'sessions#omniauth'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
