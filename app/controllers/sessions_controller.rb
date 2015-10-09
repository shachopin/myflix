class SessionsController < ApplicationController
  def login
    user = User.find_by email: params[:email]
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      flash[:success]= "You are signed in, enjoy!"
      redirect_to home_path
    else
      flash[:danger] = "Invalid email or password"
      redirect_to sign_in_path  #use render :new here would work, strange
    end
  end

  def destroy
    session[:id] = nil
    flash[:success] = "you are signed out"
    redirect_to root_path
  end

  def new
    redirect_to home_path if logged_in?
  end
end