Rails.application.routes.draw do


  root to: 'pages#home'
  get 'posts/new' , to: 'pages#home'
  get '/posts/:id', to: 'pages#home'


  #API

  namespace :api , defaults: {format: :json} do
    namespace :v1 do
      resources :posts, only: [:index, :create, :show]
    end
  end



end
