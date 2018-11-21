Rails.application.routes.draw do
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # get 'restaurants/edit'
  # get 'restaurants/update'
  # get 'restaurants/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :restaurants
  # root 'restaurants#index'
  # get 'restaurants/top', to: 'restaurants#top'

  # namespace :owner do
  #   resources :restaurants, only: [:index]
  # end

  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [ :show, :edit, :update, :destroy ]
end
