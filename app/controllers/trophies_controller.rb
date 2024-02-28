class TrophiesController < ApplicationController
  before_action :_admin_user, only: [:edit, :update]

  def index
    @trophies = Trophy.all
  end

  def edit
    @trophies = Trophy.all
  end

  def update
    is_success = true
    params.require(:trophies).each do |trophy|
      ip_trophy = trophy.permit(:stage_id, :weapon_id, :color_id, :hazard_level)
      db_trophy = Trophy.find_by(stage_id: ip_trophy["stage_id"], weapon_id: ip_trophy["weapon_id"], color_id: ip_trophy["color_id"])
      if ip_trophy["hazard_level"].to_i != db_trophy.hazard_level
        is_success &= db_trophy.update(hazard_level: ip_trophy["hazard_level"].to_i)
      end
    end
    
    if is_success
      flash[:success] = "トロフィ更新しました"
      redirect_to request.referer
    else
      render 'edit_trophies', status: :unprocessable_entity
    end
  end

  private

  # 管理者かどうか確認
  def _admin_user
    if current_user.authority < 2
      flash[:danger] = "管理権限がありません"
      redirect_to request.referer, status: :see_other
    end
  end
end
