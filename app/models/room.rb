class Room < ApplicationRecord
    has_one :chat_room, dependent: :destroy
    has_one :user, through: :chat_room
    has_one :trainer, through: :chat_room
    has_many :chats, dependent: :destroy
end
