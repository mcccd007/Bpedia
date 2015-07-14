Rails.application.routes.draw do
  resources :bicycles
  root "bicycles#index"


# WOOHOO CUSTOM ROUTE
get '/bicycles/similar', to: 'bicycles#edit'


# get '/sales/:guid', to: 'sales#show'


end
