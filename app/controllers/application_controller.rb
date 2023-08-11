class ApplicationController < ActionController::Base
  include Auth
  include InertiaCsrf
  include InertiaFlash

  inertia_share do
    {
      user: current_user
    }
  end
end
