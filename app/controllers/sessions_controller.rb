class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]
  
  # --- Actions ---
  def new
    redirect_to boards_path if current_user
  end
  
  def create
    user = login(params[:session][:login], params[:session][:password], params[:session][:remember_me])
    
    if user
      redirect_to boards_path, notice: "Ok"
    else
      redirect_to login_path, alert: "Not ok"
    end
  end
  
  def destroy
    logout
    redirect_to login_path, notice: "Bye"
  end
end
