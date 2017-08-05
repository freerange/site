class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from 'Base::NotFoundError' do |exception|
    render plain: exception.message, status: :not_found
  end
end
