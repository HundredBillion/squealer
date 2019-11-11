Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "users#landing_page"
  resources :squeals
  get 'users/landing_page'
  get 'users/home'
  get 'users/explore'
  devise_for :users
  resources :users, only: [:index, :show] do
		resources :follows, only: [:create, :destroy]
	end
end
