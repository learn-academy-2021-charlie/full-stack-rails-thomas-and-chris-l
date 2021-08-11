Rails.application.routes.draw do
  get '/posts' => 'post#index', as: 'posts'
  get '/posts/new' => 'post#new', as: 'new_post'
  
  get '/posts/:id' => 'post#show', as: 'post'
  post '/posts' => 'post#create'
  delete '/posts/:id' => 'post#destroy', as: 'delete_post'
  get '/posts/:id/edit' => 'post#edit', as: 'edit_post' 
  patch 'posts/:id' => 'post#update'
  root 'post#index'  

end
