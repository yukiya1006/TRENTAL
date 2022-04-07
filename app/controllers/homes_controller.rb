class HomesController < ApplicationController
  def top
    # limit(n)でn個分のみ表示させる
    @trainer = Trainer.limit(4).order("created_at DESC")
    gon.users = User.all
    @maps = Map.all
  end
end
