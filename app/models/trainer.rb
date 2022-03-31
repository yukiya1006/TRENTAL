class Trainer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image
 
  has_many :bookmarks, dependent: :destroy

  def bookmarked_by?(user)
    bookmarks.where(user_id: user).exists?
  end

  def get_image(width, height)
  # unless image.attached?
  #   file_path = Rails.root.join('app/assets/images/sample-author1.jpg')
  #   image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  # end
  # image.variant(resize_to_limit: [width, height]).processed
  end

end
