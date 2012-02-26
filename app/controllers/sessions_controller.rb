class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:uid] = user.id
      redirect_to spots_url, :notice => "Hi #{user.username}"
    else
      flash[:notice] = "Incorrect email or password"
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path, :notice => "you have signed out"
  end

end
