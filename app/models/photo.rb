class Photo < ApplicationRecord
  belongs_to :trainer
  has_one_attached :image

  validates :caption, presence: true

  def get_image(width, height)
  end
end
