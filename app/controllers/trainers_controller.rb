class TrainersController < ApplicationController
  def index
    @trainer = Trainer.all
  end

  def show
    @trainer = current_trainer
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
      redirect_to trainer_path(@trainer), notice: "プロフィールが更新されました"
    else
      render "edit"
    end
  end

  private
  def trainer_params
    params.require(:trainer).permit(
    :email,
    :title,
    :age,
    :height,
    :image)
  end

end
