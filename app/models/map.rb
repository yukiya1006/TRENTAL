class Map < ApplicationRecord
  acts_as_taggable
  
  geocoded_by :address
  after_validation :geocode
  belongs_to :trainer
  has_many :likes

  def liked_by?(user)
    likes.where(map_id: trainer_id).exists?
  end
end
