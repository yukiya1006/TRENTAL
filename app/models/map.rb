class Map < ApplicationRecord

  geocoded_by :address
  after_validation :geocode
  belongs_to :trainer

  validates :address, presence: true
  validates :body, presence: true

  def liked_by?(user)
    likes.where(map_id: trainer_id).exists?
  end
end
