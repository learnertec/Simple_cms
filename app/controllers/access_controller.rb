class AccessController < ApplicationController
  layout 'admin'
  before_action :confirm_logged_in, :except => [:login,:attempt_login, :logout]
  def menu
  end

  def login
  end
  
  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = AdminUser.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
    end
  end
  
  if authorized_user
    session[:user_id] = authorized_user.id
    flash[:notice] = "Logged in sucessfully"
    redirect_to(admin_path)
  else
    flash.now[:notice] = "Invalid Credential username/password"
    render('login')
  end
end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = 'Logged Out'
    redirect_to(access_login_path)
  end
  
  
end
