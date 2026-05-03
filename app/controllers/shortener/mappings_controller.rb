module Shortener
  class MappingsController < BaseController
    before_action :require_authentication

    def index
      @mapping = Shortener::Mapping.new
      @mappings = Shortener::Mapping.order(:key)
    end

    def create
      @mapping = Shortener::Mapping.new(mapping_params)
      if @mapping.save
        redirect_to shortener_mappings_path, notice: 'Success!'
      else
        flash.now[:alert] = @mapping.errors.full_messages.to_sentence
        render :new, status: :unprocessable_entity
      end
    end

    private

    def mapping_params
      params.require(:shortener_mapping).permit(:friendly_key, :url)
    end
  end
end
