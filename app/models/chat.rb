class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :trainer
  belongs_to :room
  has_many :notifications, dependent: :destroy

  validates :message, presence: true
end
