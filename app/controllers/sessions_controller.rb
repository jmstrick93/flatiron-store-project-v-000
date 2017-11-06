class SessionsController < ApplicationController

  def login
  end

  def create
    if @user = User.find_by(email: params[:email])
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        flash[:notice] = "Successfully Logged In"
        redirect_to store_path
      else
        flash[:alert] = "Invalid Password"
        redirect_to login_path
      end

    else
      flash[:alert] = "Invalid Email Address"
      redirect_to login_path
    end


  end

end
