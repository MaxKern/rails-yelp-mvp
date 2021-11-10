# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # show all restaurants
  # add a new restaurant
  # read the details
  # add a review
  # all in one comment
  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:new, :create]
  end
end
