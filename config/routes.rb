Fbclone2::Application.routes.draw do

	resources :sessions, only: [:new, :create, :destroy]
	resources :relationships, only: [:create, :destroy]
	  
	match "log_out", to: "sessions#destroy", :as => "log_out"
	match "log_in", to: "sessions#new", :as => "log_in"
	match "sign_up", to: "users#new", :as => "sign_up"
	
	resources :users do
		resources :posts, only: [:show, :index]
		member do
			get :requesting, :requesters
		end
	end
		
	resources :posts do
		get :like, on: :member
	end


	resources :user do
    resources :messages
  end


	root :to => "sessions#new"

end
