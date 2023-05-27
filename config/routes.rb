# frozen_string_literal: true

Rails.application.routes.draw do
  root "friends#index"
  resources :friends
end
