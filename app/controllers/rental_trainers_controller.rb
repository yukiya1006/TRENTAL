class RentalTrainersController < ApplicationController
  def show
    @trainer = Trainer.find(params[:id])
  end
end
