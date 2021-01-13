Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: "sessions#destroy"
	root to: "static_pages#home"
	get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get '/signup', to: "users#new"
	resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :microposts, only: [:create, :destroy]
end
