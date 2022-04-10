class ChatsController < ApplicationController

  def index
    @rooms = ChatRoom.where(user_id: current_user.id)
  end

  def show
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

    # Recent Chat
    @chats = @room.chats

    # Chat New
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
