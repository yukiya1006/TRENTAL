class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :trainer
  validates :user_id, uniqueness: { scope: :trainer_id }
end
