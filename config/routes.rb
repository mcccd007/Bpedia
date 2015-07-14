Rails.application.routes.draw do
  resources :bicycles
  root "bicycles#index"
end
