class Trainer < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image

  has_many :rooms, through: :chat_rooms
  has_many :chat_rooms, dependent: :destroy
  has_many :chats, dependent: :destroy
  has_many :maps

  # トレーナーはrelationshipsを通してfollowd_id(フォローされた)を複数持つ
  has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy

  # 全てのfollower（フォローした人）を見つける
  has_many :followers, through: :reverse_of_relationships, source: :follower

  enum activity_area: { 東京都:0,神奈川県:1,千葉:2,埼玉:3 }

  enum gender: { 男性:0,女性:1 }

  enum age: { "20~25歳":0,"26~30歳":1,"30~35歳":2,"35~40歳":3,"40~45歳":4,"45歳以上":5 }

  def followers?(user)
    followers.include?(user)
  end


  def get_image(width, height)
  end

  def self.search(activity_area, gender, age, keyword)
    if search
      where.('activity_area = ? AND gender = ? AND age = ? AND biography LIKE ?',
             "#{activity_area}", "#{gender}", "#{age}", "%#{keyword}%")
    else
      trainer.all
    end
  end

  # Memo : Controller
  # Trainer.search(params[:activity_area], params[:gender], params[:age], params[:keyword])

end
