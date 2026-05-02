module Shortener
  class RedirectsController < ApplicationController
    layout false

    def show
      @mapping = Shortener::Mapping.find_by!(key: params[:id])
      redirect_to @mapping.url, status: :moved_permanently, allow_other_host: true
    end
  end
end
