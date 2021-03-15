# frozen_string_literal: true

Rails
  .application
  .routes
  .draw do
    root 'showcase#index'

    resources :showcases, only: [:index]
  end
