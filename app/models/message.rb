class Message < ApplicationRecord
  belongs_to :user
  belongs_to :trainer
  belongs_to :room
end
