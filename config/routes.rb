# frozen_string_literal: true

Rails.application.routes.draw do
  resources :cities, only: :index
end
