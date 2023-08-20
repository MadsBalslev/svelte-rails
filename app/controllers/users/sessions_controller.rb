# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  skip_before_action :authenticate_user!, only: %i[new create]
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    render inertia: 'Auth/Login'
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end
  #
  def after_sign_out_path_for(_resource_or_scope)
    flash[:notice] = 'Logged out'
    new_user_session_path
  end

  def after_sign_in_path_for(resource_or_scope)
    flash[:success] = "Logged in as #{current_user.full_name}"
    stored_location_for(resource_or_scope) || root_path
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:remember_me])
  end
end
