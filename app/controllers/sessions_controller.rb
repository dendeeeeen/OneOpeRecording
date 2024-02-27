class SessionsController < ApplicationController

  def create
    user = User.find_by(name: params[:session][:name])
    unless user
      flash[:danger] = '登録されていないアカウントです'
      redirect_to request.referer
      return
    end

    unless user.authenticate(params[:session][:password])
      flash[:danger] = 'パスワードが違います'
      redirect_to request.referer
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
