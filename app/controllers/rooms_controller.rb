class RoomsController < ApplicationController
  def show
  @room = Room.find(params[:id]) #ルーム情報の取得
    @message = Message.new #新規メッセージ投稿
    @messages = @room.messages #このルームのメッセージを全て取得
    if user_signed_in?
      if @room.user.id == current_user.id
        @trainer = @room.trainer
      else
        redirect_to "/"
      end
    elsif trainer_signed_in?
      if @room.trainer.id == current_trainer.id
        @user = @room.user
      else
        redirect_to "/"
      end

    else
      redirect_to "/"
    end
  end

  def create
    if user_signed_in?
      #userがログインしてたらuser_idを, shopがログインしてたらshop_idを@roomにいれる
      @room = Room.new(room_shop_params)
      @room.user_id = current_user.id
    elsif trainer_signed_in?
      @room = Room.new(room_user_params)
      @room.trainer_id = current_trainer.id
    else
      redirect_to "/"
    end

    if @room.save
      redirect_to :action => "show", :id => @room.id
    else
      redirect_to "/"
    end
  end

  private
  def room_trainer_params
    params.require(:room).permit(:trainer_id)
  end

  def room_user_params
    params.require(:room).permit(:user_id)
  end
end