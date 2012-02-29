class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def require_user
    if session[:uid].blank?
      redirect_to root_path, :notice => "you must be signed in"
      return
    end
    @user = User.find(session[:uid])
  end
  
  def user_spots
    @spots = Spot.where(:user_id => @user)
  end
  
end
