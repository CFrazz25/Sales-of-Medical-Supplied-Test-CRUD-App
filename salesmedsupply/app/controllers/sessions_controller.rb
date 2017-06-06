class SessionsController < ApplicationController
  def new
  end


  def create
    @user = User.authenticate(session_params[:email], session_params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to home_index_path
    else
      @errors = ["That User does not exist."]
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_index_path
  end

  private
  def session_params
    params.require(:session).permit(:email, :password)
  end
end
