class SessionsController < ApplicationController
  def new
  end

  def create
  	auth_hash = request.env['omniauth.auth']

  	render :test => request.env['rack.auth'].inspect
  end

  def failure
  end
end
