module Twilio
  class AssetsController < ApplicationController
    def show
      key = [params[:id], params[:format]].join('.')
      bucket_name = ENV.fetch('TWILIO_ASSETS_S3_BUCKET_NAME')
      object = Aws::S3::Object.new(bucket_name, key)
      redirect_to object.presigned_url(:get)
    end
  end
end
