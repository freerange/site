module Twilio
  class ConferencesController < ApplicationController
    PIN = ENV.fetch('TWILIO_CONFERENCE_LINE_PIN')

    def show
      unless params[:Digits].present?
        redirect_to action: :auth
        return
      end
      unless params[:Digits] == PIN
        redirect_to action: :auth_fail
        return
      end
    end

    def auth
    end

    def auth_fail
    end
  end
end
