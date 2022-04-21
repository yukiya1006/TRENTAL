class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :trainer
  belongs_to :room
  has_many :notifications, dependent: :destroy

  validates :message, presence: true

    def create_notification_chat!(current_user)
    if temp.blank?
      notification = current_user.active_notifications.new(
        chat_id: id,
        visited_id: user_id,
        action: 'chat'
         )
        notification.save if notification.valid?
    end
  end
end
