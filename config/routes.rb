Rails.application.routes.draw do

  get '/capstones/:id' => 'capstones#show'
  get '/capstones/:id/edit' => 'capstones#edit'
  patch '/capstones/:id'=> 'capstones#update'

  get '/skillss/:id/edit' => 'skills#edit'
  patch '/skills/:id'=> 'skills#update'


end
