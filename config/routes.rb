require 'api_version_constraint'
Rails.application.routes.draw do
# devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  namespace :api, defaults:{format: :json}, constraints:{subdomain: 'api'},  path: '/' do
    namespace :v1, path: '/', constraints: ApiVersionConstraint.new(version: 1, default: true) do
      resources :users, only: [:show, :create, :update, :destroy]
    end
  end
end
