Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end


  #Am######## get 'sessions/new'
  ###### root 'application#hello'
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'


  #Sn#### root 'application#hello', as: 'root'
  # get '/login', to: 'sessions#new', as: 'login'
  # post '/login' => 'sessions#create'
  # post '/logout', to: 'sessions#destroy', as: 'logout'