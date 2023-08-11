class ApplicationController < ActionController::Base
  include InertiaCsrf

  inertia_share do
    {
      user: current_user
    }
  end
end
