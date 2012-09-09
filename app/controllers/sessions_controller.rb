class SessionsController < ApplicationController
  def create
    puts auth = request.env['omniauth.auth']
  end
end
