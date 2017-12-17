Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
  	collection do
  		get :apply
  	end
  end

  resources :posts, only: [:index, :show, :create]
  resources :category
  resources :users, only: [:apply]
  resources :admins

  root 'posts#index'

end
