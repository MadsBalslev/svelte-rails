class UsersController < ApplicationController

  def show
    render inertia: 'Users/Show', props: {
      user: current_user
    }
  end
end
