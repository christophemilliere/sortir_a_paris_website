class ApplicationController < ActionController::Base
  include HttpAcceptLanguage::AutoLocale
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :set_locale

  def set_locale
    if defined?(params) && params[:locale]
      I18n.locale = params[:locale]
    end
    # if defined?(params) && params[:locale]
    #   I18n.locale = params[:locale]
    # elsif current_user && current_user.language_id.present?
    #   I18n.locale = current_user.language.code
    # elsif defined?(request)
    #   I18n.locale = extract_locale_from_accept_language_header
    # end
    # I18n.locale = http_accept_language.compatible_language_from(I18n.available_locales)
  end

  def default_url_options
    { locale: I18n.locale }
  end
  # def set_locale
  #   if defined?(params) && params[:locale]
  #     I18n.locale = params[:locale]
  #   elsif current_user && current_user.language_id.present?
  #     I18n.locale = current_user.language.code
  #   elsif defined?(request)
  #     I18n.locale = extract_locale_from_accept_language_header
  #   end
  #   I18n.locale ||= I18n.default_locale
  #   I18n.locale = :en unless valid_languages.include?(I18n.locale.to_sym)
  # end
end
