class LikesController < ApplicationController

  def create
    map = Map.find(params[:map_id])
    @like = current_user.likes.new(map_id: map.id)
    @map.save
    render 'replace_btn'
  end

  def destroy
    map = Map.find(params[:map_id])
    @like = current_user.likes.find_by(map_id: map.id)
    @like.destroy
    render 'replace_btn'
  end
end