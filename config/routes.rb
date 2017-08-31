Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#welcome'
  # define welcome route

  get '/welcome' => 'pages#welcome'
  # define about route

  get '/about' => 'pages#about'
  # define contest route

  get '/contest' => 'pages#contest', as: 'contest' #<--route helper
  # define kitten page - will show the user a cat photo in the size of their choosing.

  get '/kitten/:size' => 'pages#kitten', as: 'kitten' #<--route helper
  # define kittens page - will loop 5 pictures of cats

  get '/kittens/:size' => 'pages#kittens', as: 'kittens' #<--route helper
  # define a secrets page that users can only gt to if they include a secrete password in the URL

  get '/secrets/:magic_word' => 'pages#secrets', as: 'secrets' #<--route helper

end
