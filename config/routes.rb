Rails.application.routes.draw do
  get '/cats' =>'cats#index', as: 'cats'
  get '/cats/:id' =>'cats#show', as: 'cat'
  post '/cats' => 'cats#create'
  resources :movies
  resources :directors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
