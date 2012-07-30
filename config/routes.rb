Fbclone2::Application.routes.draw do

  get "relationships/create"

  get "relationships/destroy"

	resources :sessions, only: [:new, :create, :destroy]
	resources :relationships, only: [:create, :destroy]
	  
	match "log_out", to: "sessions#destroy", :as => "log_out"
	match "log_in", to: "sessions#new", :as => "log_in"
	match "sign_up", to: "users#new", :as => "sign_up"
	
	resources :users do
		resources :posts, only: [:show, :index]
	end
	
	resources :posts 

	resources :user

	root :to => "sessions#new"

end
