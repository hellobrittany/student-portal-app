Rails.application.routes.draw do

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  
  get '/users/:id' => 'users#show' 
  delete '/users:id' => 'users#destroy'

  get '/capstones/:id' => 'capstones#show'
  get '/capstones/:id/edit' => 'capstones#edit'
  patch '/capstones/:id' => 'capstones#update'
 

  get '/resumes/:id' => 'resumes#show'
  get '/resumes/:id/edit' => 'resumes#edit'
  patch '/resumes/:id' => 'resumes#update'

  
  get '/educations/:id/edit' => 'educations/edit'
  patch '/educations/:id' => 'educations#update'
  delete '/educations/:id' => 'educations#destroy''
end
