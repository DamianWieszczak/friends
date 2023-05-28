# frozen_string_literal: true

Rails.application.routes.draw do
  root "friends#index"
  resources :friends do
    collection do
      get :school
      get :holiday
      get :work
    end
  end
end
