class AdminController < ApplicationController
  before_filter :forward_login, only: :login

  def login
    if request.post?
      @admin = Admin.find_by_username params[:username]
      if @admin
        if @admin.authenticate(params[:password])
          session[:admin_id] = @admin.id
          redirect_to admin_home_path
          flash[:notice] = "Successful Login! Either you are Gianna or you've successfully hacked her login."
        end
        flash[:notice] = 'Your username / password is incorrect.'
      end
    else
      flash[:notice] = 'Please login'
    end
  end

  def logout
    session[:admin_id] = nil
    redirect_to home_path
  end

  def forward_login
    redirect_to admin_home_path unless current_admin.nil?
  end
end
