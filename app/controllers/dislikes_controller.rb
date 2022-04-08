class DislikesController < ApplicationController
  def create
    Dislike.create(user_id: current_user.id,trainer_id: params[:tra_id])
    redirect_to root_path
  end
end
