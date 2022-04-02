class TagMap < ApplicationRecord
  belongs_to :trainer
  belongs_to :tag
  
  validates :trainer_id, presence: true
  validates :tag_id, presence: true
end
