class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    unless user
      flash.now[:danger] = 'アカウントは登録されていません'
      render 'new', status: :unprocessable_entity
      return
    end

    unless user.authenticate(params[:session][:password])
      flash.now[:danger] = 'パスワードが違います'
      render 'new', status: :unprocessable_entity
      return
    end

    # ユーザーログイン後にユーザー情報のページにリダイレクトする
    forwarding_url = session[:forwarding_url]
    reset_session
    params[:session][:remember_me] == '1' ? remember(user) : forget(user)
    log_in user
    redirect_to forwarding_url || user
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url, status: :see_other
  end
end
