Rails.application.routes.draw do
  resources :squeals
  get 'pages/home'
  get 'pages/explore'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "pages#home"
  resources :users do
    member do
      get :follow
      get :unfollow
    end
  end
end
