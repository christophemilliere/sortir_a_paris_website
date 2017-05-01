Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do

    devise_for :users
    resources :categories
    resources :monuments
    root 'pages#index'

    # API+API Documentation
    mount Api::Sap::Api, at: "/api"
    mount GrapeSwaggerRails::Engine, at: "api/documentation"
    if Rails.env.development?
      mount Localtower::Engine, at: "localtower"
    end
  end
end
