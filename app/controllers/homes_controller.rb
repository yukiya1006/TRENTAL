class HomesController < ApplicationController
  def top
    # limit(n)でn個分のみ表示させる
    @trainers = Trainer.limit(4).order("created_at DESC")
    gon.users = User.all
    @maps = Map.all
    @user = current_user
    @trainer = current_trainer
  end

  def about
    @trainer = current_trainer
    @user = current_user
  end
end
