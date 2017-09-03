Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do

    devise_for :users
    resources :categories
    resources :monuments
    resources :towns
    root 'pages#index'
    if Rails.env.development?
      mount Localtower::Engine, at: "localtower"
    end
  end
  # API+API Documentation
  mount Api::Sap::Api, at: "/api"
  mount GrapeSwaggerRails::Engine, at: "api/documentation"
end
