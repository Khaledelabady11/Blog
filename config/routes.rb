Rails.application.routes.draw do

  namespace :api do
    resources :articles do
      resources :comments
    end
  end

  # resources :articles do
  #   resources :comments
  # end
end
