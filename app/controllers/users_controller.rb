class UsersController < ApplicationController
  def index
  end
  
  def new
    @user = User.new
  end

  def show
    if current_user
      render 'show'
    else
      redirect_to '/login', notice: 'Please log in to see your profile'
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to '/login', notice: 'Succesfully signed up, welcome to Kit!' 
    else
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :screen_name, :display_name, :password, :password_confirmation)
    end
end
