class LikesController < ApplicationController

  def create
  　current_user.like(params[:trainer_id])
    redirect_to request.referer
  end

  def destroy
    map = Map.find(params[:map_id])
    @like = current_user.likes.find_by(map_id: map.id)
    @like.destroy
    render 'replace_btn'
  end
end