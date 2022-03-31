class BookmarksController < ApplicationController
  before_action :authenticate_user!

  def create
    @trainer = Trainer.find(params[:trainer_id])
    bookmark = @trainer.bookmarks.new(user_id: current_user.id)
    if bookmark.save
      redirect_to request.referer
    else
      redirect_to request.referer
    end
  end

  def destroy
    @trainer = Post.find(params[:trainer_id])
    bookmark = @tra.bookmarks.find_by(user_id: current_user.id)
    if bookmark.present?
        bookmark.destroy
        redirect_to request.referer
    else
        redirect_to request.referer
    end
  end
  
end
