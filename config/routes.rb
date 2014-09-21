Rails.application.routes.draw do

  root 'welcome#index'

  resources :restaurants do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  end

end
