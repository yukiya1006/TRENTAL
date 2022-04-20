class Trainer < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image

  has_many :chat_rooms, dependent: :destroy
  has_many :rooms, through: :chat_rooms
  has_many :chats, dependent: :destroy
  has_many :maps
  has_many :photos

  validates :name, presence: true

  # トレーナーはrelationshipsを通してfollowd_id(フォローされた)を複数持つ
  has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_many :reverse_of_like_relationships, class_name: "LikeRelationship", foreign_key: "liked_id", dependent: :destroy
  has_many :reverse_of_bad_relationships, class_name: "BadRelationship", foreign_key: "baded_id", dependent: :destroy

  # 全てのfollower（フォローした人）を見つける
  has_many :followers, through: :reverse_of_relationships, source: :follower
  has_many :likers, through: :reverse_of_like_relationships, source: :liker
  has_many :baders, through: :reverse_of_bad_relationships, source: :bader

  enum activity_area: { "東京都":0,"神奈川県":1,"千葉":2,"埼玉":3 }

  enum gender: { "男性":0,"女性":1 }

  enum age: { "20~25歳":0,"26~30歳":1,"30~35歳":2,"35~40歳":3,"40~45歳":4,"45歳以上":5 }

  enum session_fee: {"3,000￥":0,"4,000￥":1,"5,000￥":2,"6,000￥":3,"7,000￥":4,"8,000￥":5,"9,000￥":6,"10,000￥":7,}

  enum training_history: { "1~2年":0,"2~3年":1,"3~4年":2,"4~5年":3,"5年以上":4 }

  enum teaching_history: { "経験あり":0,"経験なし":1 }

  enum qualification: { "あり":0,"なし":1 }

  enum strong_part: { "脚":0,"お尻":1,"胸":2,"背中":3,"腕":4,"肩":5}

  def followers?(user)
    followers.include?(user)
  end

  def likers?(user)
    likers.include?(user)
  end

  def baders?(user)
    baders.include?(user)
  end

  def get_image(width, height)
  end

  def active_for_authentication?
    super && (is_trainer_deleted == false)
  end

end
