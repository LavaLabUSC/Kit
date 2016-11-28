class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)

    # if @user && @user.authenticate(params[:session][:password])
    if @user && params[:session][:password] == 'pass'
      # Log in
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:notice] = 'Login failed, please try again'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
