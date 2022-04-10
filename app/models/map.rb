class Map < ApplicationRecord
  
  geocoded_by :address
  after_validation :geocode
  belongs_to :trainer

  def liked_by?(user)
    likes.where(map_id: trainer_id).exists?
  end
end
