class UsersController < ApplicationController
  def new
  end

  def create
    @key = user_params[:secret_key]
    @user = User.new(user_params)
if @key == "123456"
    if @user.save
      session[:user_id] = @user.id
      redirect_to home_index_path
    else
      @errors = @user.errors.full_messages
      render :new
    end
    else
      @errors = ["Invalid registration key."]
      render :new
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :admin, :secret_key)
  end
end
