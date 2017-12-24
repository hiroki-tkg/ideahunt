Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    member do
      put 'like'    => 'posts#like'
      put 'dislike' => 'postss#dislike'
      put 'unvote'  => 'posts#unvote'
    end
  	collection do
  		get :apply
  	end
    resources :comments, only: [:create, :destroy]
  end

  get 'home/index'             
  get 'home/show'

  resources :posts, only: [:index, :show, :create]
  resources :category
  resources :users
  resources :admins

  root 'posts#index'

end
