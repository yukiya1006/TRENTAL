class Room < ApplicationRecord
    has_many :users
    has_many :trainers
    has_many :chat_rooms, dependent: :destroy
    has_many :chats, dependent: :destroy
end
