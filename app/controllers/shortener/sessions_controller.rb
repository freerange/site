module Shortener
  class SessionsController < BaseController
    def new; end

    def create
      if user = User.authenticate_by(email: params[:email], password: params[:password])
        cookies.signed[:session_token] = {
          value: user.generate_token_for(:session),
          httponly: true,
          same_site: :lax
        }

        redirect_to shortener_mappings_path, notice: 'Success!'
      else
        flash.now[:alert] = 'Failed!'
        render :new, status: :unprocessable_entity
      end
    end

    def destroy
      cookies.delete(:session_token)
      redirect_to new_shortener_session_path, notice: 'Success!'
    end
  end
end
