require "grape-swagger"

module V1
  class Base < Grape::API
    version "v1", using: :path
    format :json
    formatter :json, Grape::Formatter::ActiveModelSerializers
    # formatter :json, Grape::Formatter::ActiveModelSerializers

    # helpers do
    #     def current_organizer
    #       @current_organizer = User.find_by_email(user_email)
    #       # user_email = AESCrypt.decrypt(cookies[:__se], Rails.application.config.grape_api_salt).presence if cookies[:__se] && cookies[:__tk]
    #       # user = user_email && User.find_by_email(user_email)
    #       # if user && Devise.secure_compare(user.authentication_token, AESCrypt.decrypt(cookies[:__tk], Rails.application.config.grape_api_salt))
    #       #   @current_user = User.find_by_authentication_token(AESCrypt.decrypt(cookies[:__tk], Rails.application.config.grape_api_salt))
    #       # end
    #     end

    #     def authenticate!
    #       error!('401 Unauthorized', 401) unless current_user
    #     end

    #     def permitted_params
    #       @permitted_params ||= declared(params, include_missing: false)
    #     end
    #     def logger
    #       Rails.logger
    #     end
    #   end

    #   rescue_from ActiveRecord::RecordNotFound do |e|
    #     error_response(message: e.message, status: 404)
    #   end

    #   rescue_from ActiveRecord::RecordInvalid do |e|
    #     error_response(message: e.message, status: 422)
    #   end

    #Mount our ressources
    mount V1::Monuments
    mount V1::Towns
    add_swagger_documentation(
      api_version: "api/v1",
      hide_documentation_path: true,
      mount_path: "swagger_doc",
      hide_format: true
    )
  end
end
