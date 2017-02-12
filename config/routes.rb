Rails.application.routes.draw do
  resources :categories
  resources :monuments
  root 'pages#index'
  devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # API+API Documentation
  mount Api::Sap::Api, at: "api"
  mount GrapeSwaggerRails::Engine, at: "api/documentation"
end
