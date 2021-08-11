Rails.application.routes.draw do
  get '/' => 'post#index'
  root 'post#index'

  get '/posts' => 'post#index'
  
end
