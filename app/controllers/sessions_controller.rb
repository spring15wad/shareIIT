class SessionsController < ApplicationController

  def create
    @uemail = auth_hash.info.email
    if @uemail.include?("hawk.iit.edu")
     @user = User.find_or_create_from_auth_hash(auth_hash)
     self.current_user = @user
     redirect_to root_url
    else
     flash[:notice] = " Please Sign In with your Hawk email"
     redirect_to '/'
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Logged out!"
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
