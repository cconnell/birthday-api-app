Rails.application.routes.draw do
  get '/birthdays' => 'birthdays#index'
  post '/birthdays' => 'birthdays#create'
  get '/birthdays/:id' => 'birthdays#show'
  
  patch '/birthdays/:id' => 'birthdays#update'
  delete '/birthdays/:id' => 'birthdays#destroy'
  
end
