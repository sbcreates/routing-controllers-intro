Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#welcome'
  # define welcome route
  get '/welcome' => 'pages#welcome'
  # define about route
  get '/about' => 'pages#about'
  # define contest route
  get '/contest' => 'pages#contest'

end
