Rails.application.routes.draw do
  get '/' => 'post#index'
  root 'post#index'

  # get '/posts' => 'post#index'
  get '/post/new' => 'post#new'
  get '/post/:id' => 'post#show'
 
  
end
