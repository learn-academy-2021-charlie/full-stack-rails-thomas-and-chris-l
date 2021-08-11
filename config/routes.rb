Rails.application.routes.draw do
  get '/post/new' => 'post#new', as: 'new_post'
  get '/posts' => 'post#index', as: 'posts'
  get '/post/:id' => 'post#show', as: 'post'
  post '/posts' => 'post#create'
  delete '/posts/:id' => 'post#destroy', as: 'delete_post'
  root 'post#index'  
end
