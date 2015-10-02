class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_admin
    @admin ||= Admin.find_by_id(session[:admin_id])
  end
  helper_method :current_admin

  def require_admin
    if current_admin.nil?
      flash[:notice] = "Woah, nelly -- not so fast. You have to be an admin to login."
      session[:admin_requested_url] = request.url unless request.xhr?
      session[:admin_id] = nil
      redirect_to login_path and return false
    end
  end
end
