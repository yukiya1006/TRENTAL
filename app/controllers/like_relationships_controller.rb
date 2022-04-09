class LikeRelationshipsController < ApplicationController

  def create
    current_user.like(params[:trainer_id])
    redirect_to request.referer
  end

  def destroy
    current_user.dislike(params[:trainer_id])
    redirect_to request.referer
  end

  # トレーナーをlikeしたユーザー達(likers)
  def likers
    trainer = Trainer.find(params[:user_id])
  end

end
