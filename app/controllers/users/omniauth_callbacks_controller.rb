class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def all
    puts "********"
    puts request.env["omniauth.auth"]
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  # def google
  #   @user = User.from_omniauth(request.env["omniauth.auth"])
  #
  #   if @user.persisted?
  #     sign_in_and_redirect @user, :event => :authentication
  #     set_flash_message(:notice, :success, :kind => "Google") if is_navigational_format?
  #   else
  #     session["devise.google_data"] = request.env["omniauth.auth"].except(:extra) #Removing extra as it can overflow some session stores
  #     redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
  #   end
  # end

  def failure
    redirect_to root_path
  end

  alias_method :facebook, :all
  alias_method :google_oauth2, :all
end
