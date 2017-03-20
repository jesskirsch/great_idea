Rails.application.routes.draw do

  # resources :users
  resources :ideas
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  root 'welcome#index'
  get '/great_ideas' => 'ideas#great_ideas'
  get '/random_ideas' => 'ideas#random_ideas'
  get '/scrapped_ideas' => 'ideas#scrapped_ideas'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
