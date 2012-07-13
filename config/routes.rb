Fbclone2::Application.routes.draw do

  
get "log_out" => "sessions#destroy", :as => "log_out"
get "log_in" => "sessions#new", :as => "log_in"
get "sign_up" => "users#new", :as => "sign_up"


resources :sessions, :only => [:new, :create, :destroy]
	
	resources :users do
		resources :posts
	end

root :to => "posts#new"

end
