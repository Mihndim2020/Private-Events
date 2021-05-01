class ApplicationController < ActionController::Base
  private
  
  def require_login
    unless current_user
      redirect_to login_path, :alert => 'To see the events Please Sign up or Login!'
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
