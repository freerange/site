class SessionsController < ApplicationController
  def new
    redirect_to '/auth/github'
  end

  def create
    auth = request.env['omniauth.auth']
    organizations_url = auth['extra']['raw_info']['organizations_url']
    organizations = JSON.parse(Net::HTTP.get(URI(organizations_url)))
    if organizations.any? { |o| o['login'] == 'freerange' }
      login = auth['extra']['raw_info']['login']
      reset_session
      session[:login] = login
      redirect_to root_url, notice: 'Signed in!'
    else
      redirect_to root_url, alert: "Authorization error!"
    end
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => 'Signed out!'
  end

  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end
end
