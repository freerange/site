class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    render plain: current_user.name
  end
end
