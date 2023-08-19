class StaticController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    render inertia: 'App'
  end
end
