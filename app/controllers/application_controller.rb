class ApplicationController < ActionController::Base
  rescue_from 'Base::NotFoundError' do |exception|
    render plain: exception.message, status: :not_found
  end
end
