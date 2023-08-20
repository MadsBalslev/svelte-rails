class ApplicationController < ActionController::Base
  include Pundit::Authorization
  include Auth
  include InertiaCsrf
  include InertiaFlash

  add_flash_types :warning, :success, :error, :info

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  inertia_share do
    {
      user: current_user
    }
  end

  private

  def user_not_authorized
    redirect_to request.referrer || new_user_session_path, alert: 'You are not authorized to perform this action.'
  end
end
