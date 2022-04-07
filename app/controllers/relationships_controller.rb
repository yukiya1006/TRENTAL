class RelationshipsController < ApplicationController

  # フォローするとき
  def create
    current_user.follow(params[:trainer_id])
    redirect_to request.referer
  end
  # フォロー外すとき
  def destroy
    current_user.unfollow(params[:trainer_id])
    redirect_to request.referer
  end

  # ユーザー側
  def followings
    user = User.find(params[:user_id])
    @trainers = user.followings
  end

  # トレーナー側
  def followers
    trainer = Trainer.find(params[:user_id])
    @users = trainer.followers
  end
end
