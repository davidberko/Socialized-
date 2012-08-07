Fbclone2::Application.routes.draw do

	resources :sessions, only: [:new, :create, :destroy]
	resources :relationships, only: [:create, :destroy]
	  
	match "log_out", to: "sessions#destroy", :as => "log_out"
	match "log_in", to: "sessions#new", :as => "log_in"
	match "sign_up", to: "users#new", :as => "sign_up"
	
	resources :users do
    resources :messages
		resources :posts, only: [:show, :index]
  	member do
			get :requesting, :requesters
		end
	end

	
	resources :posts 
	resources :user
  resources :comments


	resources :posts do
		get :like, on: :member
		get :unlike, on: :member
	end

	root :to => "sessions#new"

end
