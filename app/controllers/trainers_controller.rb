class TrainersController < ApplicationController

  def index
    @trainer = Trainer.all
    @maps = Map.all
  # 　@trainers = Trainer.order(id: :desc).search(params[:age],[:gender],[:activity_area])
  end

  def show
    @trainer = Trainer.find(params[:id])
    # @user_likes = @trainer.id
    # @likes_count = 0
    # @likes_count = @trainer.good_evaluation_count
    # @dislikes_count = 0
    # @dislikes_count = @trainer.good_evaluation_count
  end

  def edit
    @trainer = Trainer.find(params[:id])
    if @trainer != current_trainer
    redirect_to trainer_path(current_trainer)
    end
  end

  def update
    @trainer = current_trainer
    if @trainer.update(trainer_params)
      redirect_to trainer_path(current_trainer), notice: "プロフィールが更新されました"
    else
      redirect_to edit_trainer_path
    end
  end

  private
  def trainer_params
    params.require(:trainer).permit(
    :email,
    :name,
    :biography,
    :board_image)
    .merge(activity_area: params[:trainer][:activity_area].to_i)
    .merge(gender: params[:trainer][:gender].to_i)
    .merge(age: params[:trainer][:age].to_i)
  end

end
