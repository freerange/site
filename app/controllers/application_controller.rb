class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from 'Base::NotFoundError' do |exception|
    render plain: exception.message, status: :not_found
  end

private

  def current_user
    Person.find_by_github_login(session[:login]) if session[:login]
  end

  def authenticate_user!
    unless current_user
      redirect_to signin_path, alert: 'You need to sign in for access to this page.'
    end
  end
end
