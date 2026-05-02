module Shortener
  class MappingsController < ApplicationController
    layout 'shortener'

    def index
      @mappings = Shortener::Mapping.all
    end

    def new
      @mapping = Shortener::Mapping.new
    end

    def create
      @mapping = Shortener::Mapping.new(mapping_params)
      if @mapping.save
        redirect_to shortener_mapping_path(@mapping), notice: 'Success!'
      else
        flash.now[:alert] = @mapping.errors.full_messages.to_sentence
        render :new, status: :unprocessable_entity
      end
    end

    def show
      @mapping = Shortener::Mapping.find_by!(key: params[:id])
    end

    private

    def mapping_params
      params.require(:shortener_mapping).permit(:friendly_key, :url)
    end
  end
end
