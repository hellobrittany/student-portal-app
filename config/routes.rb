Rails.application.routes.draw do

  get '/' => 'sessions#index'

  get '/capstones/:id' => 'capstones#show'
  get '/capstones/:id' => 'capstones#edit'
  patch '/capstones/:id' => 'capstones#update'
end
