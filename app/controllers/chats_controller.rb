class ChatsController < ApplicationController

  def index
    @rooms = ChatRoom.where(user_id: current_user.id).order("id DESC").page(params[:page]).per(8)
    @user = current_user
    # @last_message = Chat.where(room_id: @rooms.find_by(trainer_id: @trainer.id)).order("id DESC").limit(1)
  end

  def show
    # @room = Room.find(params[:id])
    @user = current_user
    @trainer = Trainer.find(params[:id])
    rooms = current_user.chat_rooms.pluck(:room_id)
    # 左辺にChatRoomからuser,trainerに紐づいたroom.idを持ったroom見つけそれを代入
    trainer_rooms = ChatRoom.find_by(user_id: current_user.id, trainer_id: @trainer.id, room_id: rooms)

    if trainer_rooms.nil?
      # ルームがなかったらCreate
      @room = Room.create()
      # user.idとtrainer.idに紐づいたroom.idを持ったチャットルームをcreate
      ChatRoom.create(user_id: current_user.id, trainer_id: @trainer.id, room_id: @room.id)

    else
      # Return Room ID
      @room = trainer_rooms.room
    end
      @chats = @room.chats
      @chat = Chat.new(room_id: @room.id, trainer_id: @trainer.id)
  end

  def create
    Chat.create(chat_params)
    redirect_to request.referer
  end

  private

  def chat_params
    params.require(:chat).permit(:trainer_id, :message, :room_id).merge(user_id: current_user.id, is_trainer: false)
  end
end