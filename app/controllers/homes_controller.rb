class HomesController < ApplicationController
  def top
      # limit(n)でn個分のみ表示させる
    @trainer = Trainer.limit(4).order("created_at DESC")
  end
end
