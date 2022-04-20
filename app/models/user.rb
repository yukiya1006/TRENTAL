class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image

  has_many :chat_rooms
  has_many :rooms, through: :chat_rooms
  has_many :chats

  # ユーザーはrelationshipsを通してfollower_id(フォローした)を複数持つ
  has_many :relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :like_relationships, class_name: "LikeRelationship", foreign_key: "liker_id", dependent: :destroy
  has_many :bad_relationships, class_name: "BadRelationship" , foreign_key: "bader_id", dependent: :destroy


  # 全てのfollowed（フォローされた人）を見つけて一覧表示
  has_many :followings, through: :relationships, source: :followed
  has_many :likings, through: :like_relationships, source: :liked
  has_many :badings, through: :bad_relationships, source: :baded

  has_many :active_notifications, class_name: 'Notification', foreign_key: 'visitor_id', dependent: :destroy
  has_many :passive_notifications, class_name: 'Notification', foreign_key: 'visited_id', dependent: :destroy

  validates :name, presence: true

# フォローしたときの処理
def follow(trainer_id)  # 引数にフォロー相手を指定
  relationships.create(followed_id: trainer_id) #トレーナーをフォローしたらtrainer_idを持ったfollowed_idが生成される
end
# フォローを外すときの処理
def unfollow(trainer_id)
  relationships.find_by(followed_id: trainer_id).destroy #フォロー解除したらfollowed_idからtrainer_idを見つけて削除される
end
# フォローしているか判定
def following?(trainer)
  followings.include?(trainer)
end



def like(trainer_id)
  like_relationships.create(liked_id: trainer_id) #トレーナーをフォローしたらtrainer_idを持ったfollowed_idが生成される
end

def dislike(trainer_id)
  like_relationships.find_by(liked_id: trainer_id).destroy #フォロー解除したらfollowed_idからtrainer_idを見つけて削除される
end

def liking?(trainer)
  likings.include?(trainer)
end


def make_bad(trainer_id)
  bad_relationships.create(baded_id: trainer_id) #トレーナーをフォローしたらtrainer_idを持ったfollowed_idが生成される
end

def was_bad(trainer_id)
  bad_relationships.find_by(baded_id: trainer_id).destroy #フォロー解除したらfollowed_idからtrainer_idを見つけて削除される
end

def bading?(trainer)
  badings.include?(trainer)
end

def active_for_authentication?
  super && (is_user_deleted == false)
end

def get_image(width, height)
end


end

