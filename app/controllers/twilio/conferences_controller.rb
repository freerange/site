module Twilio
  class ConferencesController < ApplicationController
    helper_method :pin

    def show
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
