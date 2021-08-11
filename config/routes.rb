Rails.application.routes.draw do
  get '/' => 'post#home'
  root 'post#home'

  get '/posts' => 'post#index'
  
end
