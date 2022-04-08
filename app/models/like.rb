class Like < ApplicationRecord
  belongs_to :user
  belongs_to :trainer
  
  belongs_to :user
  belongs_to :trainer
  belongs_to :evaluate_user, class_name: User, foreign_key: :evaluate_user_id
  
  validates :evaluate_user_id, uniqueness: true
end
