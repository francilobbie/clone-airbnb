Rails.application.routes.draw do
  devise_for :users
  root to: "flats#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flats, only: [:show, :new, :create, :edit, :update] do
    resources :bookings, only: [:idex, :show, :new, :create, :edit, :update]
  end
  # end
  resources :users, only: :show
  resources :flats, only: :destroy
end
