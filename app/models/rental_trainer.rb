class RentalTrainer < ApplicationRecord
  has_one_attached :image


  def get_image(width, height)
  end
end
