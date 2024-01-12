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
    reset_session      # ログインの直前に必ずこれを書くこと
    log_in user
    redirect_to user
  end

  def destroy
    log_out
    redirect_to root_url, status: :see_other
  end
end
