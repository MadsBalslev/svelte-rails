class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  skip_before_action :authenticate_user!, only: [:github]

  def github
    @user = User.from_omniauth(request.env['omniauth.auth'])

    if @user.persisted?
      flash[:success] = 'Signed in with GitHub successfully.'
      sign_in_and_redirect @user, event: :authentication
    else
      flash[:error] = t('devise.omniauth_callbacks.failure', kind: 'GitHub', reason: 'authentication error')
      redirect_to new_user_registration_url
    end
  end
end
