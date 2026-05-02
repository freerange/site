module Shortener
  class BaseController < ::ApplicationController
    layout 'shortener'

    before_action :authenticate_from_session

    helper_method :signed_in?

    private

    def authenticate_from_session
      return if signed_in?

      if (token = cookies.signed[:session_token])
        Current.user = User.find_by_token_for(:session, token)
      end
    end

    def signed_in?
      Current.user.present?
    end

    def require_authentication
      redirect_to new_shortener_session_path, notice: 'You must sign in!' unless signed_in?
    end
  end
end
