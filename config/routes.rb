Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  namespace :api, defaults:{format: :json}, constraints:{subdomain: 'api'},  path: "/" do

  end
end
