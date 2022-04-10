class BadRelationshipsController < ApplicationController

  def create
    current_user.make_bad(params[:trainer_id])
    redirect_to request.referer
  end

  def destroy
    current_user.was_bad(params[:trainer_id])
    redirect_to request.referer
  end
  
end
