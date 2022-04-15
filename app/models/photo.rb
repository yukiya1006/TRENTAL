class Photo < ApplicationRecord
  belongs_to :trainer
  has_one_attached :image

  def get_image(width, height)
  end
end
