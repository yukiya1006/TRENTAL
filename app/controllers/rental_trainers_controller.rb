class RentalTrainersController < ApplicationController
  def show
    @trainer = current_trainer
    @trainer = Trainer.find(params[:id])
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
