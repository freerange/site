module Slack
  class InvitationsController < ApplicationController
    layout 'wiki'

    SLACK_SUBDOMAIN = 'gfr-show-and-tell'.freeze
    SLACK_ENDPOINT = URI("https://#{SLACK_SUBDOMAIN}.slack.com/api/users.admin.invite").freeze

    def new
      @invitation = Invitation.new
      @page_title = 'Show & Tell Slack Channel'
    end

    def create
      @invitation = Invitation.new(params.permit(:email))

      unless verify_recaptcha(model: @invitation) && @invitation.valid?
        error_message = @invitation.errors.full_messages.to_sentence
        flash.now[:alert] = "Validation error: #{error_message}"
        render :new
        return
      end

      response = Net::HTTP.post_form(SLACK_ENDPOINT, {
        email: @invitation.email,
        channels: SLACK_SUBDOMAIN,
        set_active: true,
        _attempts: 1,
        token: ENV['SLACK_API_TOKEN']
      })

      unless response.code == '200'
        error_message = "Slack API error: #{response.code} #{response.message}"
        Rollbar.error(error_message)
        flash.now[:alert] = error_message
        render :new
        return
      end

      json = JSON.parse(response.body)
      unless json['ok']
        error_message = "Slack API error: #{json['error']}"
        Rollbar.error(error_message)
        flash.now[:alert] = error_message
        render :new
        return
      end

      notice = 'Invitation sent!'
      redirect_to new_slack_invitation_path, flash: { notice: notice }
    end
  end
end
