Rails.application.routes.draw do

  root 'welcome#index'

  resources :restaurants
  resources :reviews, only: [:new, :create, :edit, :update, :destroy]

end
