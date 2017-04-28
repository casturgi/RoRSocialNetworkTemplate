Rails.application.routes.draw do

	get 'activities/index'
	get 'friendships/create'

	devise_for :users
	resources :users, only: [:show, :index] 
	resources :posts, only: [:create, :update, :edit, :destroy]
	resources :activities, only: [:index]


	resources :friendships, only: [:create, :destroy, :accept] do
	  member do
	  	put :accept
	  end
	end
	root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
