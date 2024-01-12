class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(_user_params)
    if @user.save
      reset_session
      log_in @user
      flash[:success] = "アカウント登録しました。"
      redirect_to @user
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private 
  
  def _user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
