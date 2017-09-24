module Twilio
  class ConferencesController < ApplicationController
    protect_from_forgery with: :null_session

    helper_method :pin

    def create
      unless params[:Digits].present?
        redirect_to action: :auth
        return
      end
      unless params[:Digits] == pin
        redirect_to action: :auth_fail
        return
      end
    end

    def auth
    end

    def auth_fail
    end

    private

    def pin
      @pin ||= ENV.fetch('TWILIO_CONFERENCE_LINE_PIN')
    end
  end
end
