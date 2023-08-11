class ApplicationController < ActionController::Base
  include Pundit::Authorization
  include Auth
  include InertiaCsrf
  include InertiaFlash

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  inertia_share do
    {
      user: current_user
    }
  end

  private

  def user_not_authorized
    redirect_to request.referrer || root_path, alert: 'You are not authorized to perform this action.'
  end
end
