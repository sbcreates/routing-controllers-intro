Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#welcome'
  #defined welcome route
  get '/welcome' => 'pages#welcome'

  get '/about' => 'pages#about'
end
