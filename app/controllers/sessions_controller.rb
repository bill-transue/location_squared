class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    if user = User.find_or_create_by_foursquare_id(auth['uid'])
      flash[:notice] = "Signed in as #{user.name}."
      user.update_attributes :name => auth['extra']['raw_info']['firstName'],
                             :photo => auth['extra']['raw_info']['photo']
    else
      flash[:error] = "Couldn't create account..."
    end
    redirect_to root_url
  end
end
