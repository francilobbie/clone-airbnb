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
  resources :bookings, only: :destroy
  resources :reviews, only: :destroy
  namespace :api do
    resources :favorites, only: [:create, :destroy]
  end
  resources :flats do
    resources :photos, only: [:create, :destroy]
  end
  get '/flats/:id/delete_photo', to: 'flats#delete_photo', as: 'delete_flat_photo'
  patch 'flats/:id/delete_photo', to: 'flats#delete_photo', as: 'delete_photo_flat'

end
