class UsersController < ApplicationController
  before_action :_logged_in_user, only: [:edit, :update, :destroy]
  before_action :_correct_user,   only: [:edit, :update]
  before_action :_admin_user,     only: :destroy

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def show_record
    @user = User.find(params[:id])
    @records = @user.clearrecords
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(_user_params)
    if @user.save
      weapons.each.with_index(1) do |weapon, wi|
        stages.each.with_index(1) do |stage, si|
          @user.clearrecords.create!(weapon_id: wi, stage_id: si)
        end
      end
      reset_session
      log_in @user
      flash[:success] = "アカウント登録しました"
      redirect_to @user
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def edit_record
    @user = User.find(params[:id])
    @records = @user.clearrecords
  end

  def update
    @user = User.find(params[:id])
    if @user.update(_user_params)
      flash[:success] = "アカウント更新しました"
      redirect_to @user
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def update_record
    @user = User.find(params[:id])
    @records = User.find(params[:id]).clearrecords

    is_success = true
    params.require(:user).require(:records).each do |record|
      ip_record = record.permit(:stage_id, :weapon_id, :hazard_level)
      db_record = @records.find_by(stage_id: ip_record["stage_id"], weapon_id: ip_record["weapon_id"])
      if ip_record["hazard_level"].to_i != db_record.hazard_level
        is_success &= db_record.update(hazard_level: ip_record["hazard_level"].to_i)
      end
    end

    if is_success
      flash[:success] = "記録更新しました"
      redirect_to edit_record_path(@user)
    else
      render 'edit_record', status: :unprocessable_entity
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "削除しました"
    redirect_to users_url, status: :see_other
  end

  private 
  
  def _user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

  # ログイン済みユーザーかどうか確認
  def _logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "ログインしてください"
      redirect_to login_url, status: :see_other
    end
  end

  # 正しいユーザーかどうか確認
  def _correct_user
    @user = User.find(params[:id])
    redirect_to(root_url, status: :see_other) unless @user == current_user
  end

  # 管理者かどうか確認
  def _admin_user
    redirect_to(root_url, status: :see_other) unless current_user.authority == 2
  end
end
