Rails.application.routes.draw do
  resources :categories
  resources :monuments
  root 'pages#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # API+API Documentation
  mount Api::Sap::Api, at: "api"
  mount GrapeSwaggerRails::Engine, at: "api/documentation"
  if Rails.env.development?
    mount Localtower::Engine, at: "localtower"
  end
end
