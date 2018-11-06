Rails.application.routes.draw do

  resources :cocktails do
    resources :doses, only: [ :new, :create, :destroy ]
  end

  root :to => 'cocktails#index'

  # get 'doses/index'
  # get 'doses/show'
  # get 'doses/new'
  # get 'doses/edit'

  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/edit'

end

# RESTAURANTS -----------------------------------------------------
#
  # get 'restaurants', to: 'restaurants#index'

  # get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  # post 'restaurants', to: 'restaurants#create'

  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  # patch 'restaurants/:id', to: 'restaurants#update'

  # delete 'restaurants/delete', to: 'restaurants#destroy'


# REVIEWS ------------------------------------------------------------
#
  # get 'reviews/index'
  # get 'reviews/show'

  # get 'reviews/new', to: 'reviews#new'
  # get 'reviews', to: 'reviews#create', as: 'review'

  # get 'reviews/update'
  # get 'reviews/edit'

  # get 'reviews/delete'

