Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :posts do
    collection do
      post :confirm
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
