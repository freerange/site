require 'ims/lti'

class LmsTestController < ApplicationController
  LTI_CONSUMER_KEY = ENV['LTI_CONSUMER_KEY']
  LTI_CONSUMER_SECRET = ENV['LTI_CONSUMER_SECRET']
  LTI_PROVIDER_URL = ENV['LTI_PROVIDER_URL']

  before_action :authenticate

  def index
    @snip = OpenStruct.new
    render layout: 'wiki'
  end

  def lti
    email = params[:email]
    course_uuid = params[:course_uuid]

    consumer = IMS::LTI::ToolConsumer.new(LTI_CONSUMER_KEY, LTI_CONSUMER_SECRET)
    consumer.set_config(IMS::LTI::ToolConfig.new(launch_url: LTI_PROVIDER_URL))
    consumer.resource_link_id = 'test-link'
    consumer.set_custom_param('fl_external_learner_id', email)
    consumer.set_custom_param('fl_course_uuid', course_uuid)

    @fields = consumer.generate_launch_data
    @url = LTI_PROVIDER_URL

    render layout: false
  end

  private

  def authenticate
    email = Mail::Address.new(params[:email])
    @email = email if email.domain == 'gofreerange.com'
  end
end