class LikesController < ApplicationController

  def create
  　Like.create(user_id: current_user.id,trainer_id: params[:trainer_id])
    redirect_to root_path
  end

  def destroy
    map = Map.find(params[:map_id])
    @like = current_user.likes.find_by(map_id: map.id)
    @like.destroy
    render 'replace_btn'
  end
end