Fbclone2::Application.routes.draw do

	resources :sessions, only: [:new, :create, :destroy]
		
	  
	match "log_out", to: "sessions#destroy", :as => "log_out"
	match "log_in", to: "sessions#new", :as => "log_in"
	match "sign_up", to: "users#new", :as => "sign_up"
	
	resources :users do
		resources :posts, only: [:show, :index]
	end
	
	resources :posts do
		resources :comments
	end
	
	resources :users

	root :to => "sessions#new"

end
