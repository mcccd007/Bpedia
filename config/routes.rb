Rails.application.routes.draw do

  resources :tags

  resources :bicycles do
    resources :tags
    member do
      get :compare
    end
  end

  root "bicycles#index"

end
