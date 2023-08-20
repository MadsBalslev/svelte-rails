require 'active_support/concern'

module Auth
  extend ActiveSupport::Concern

  included do
    before_action :authenticate_user!
  end

  private

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to new_user_session_path, :warning => 'You need to login first.'
    end
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || root_path
  end

  def after_sign_out_path_for(_resource_or_scope)
    new_user_session_path
  end
end
