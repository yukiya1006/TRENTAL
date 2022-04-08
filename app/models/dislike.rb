class Dislike < ApplicationRecord
  belongs_to :trainer
  belongs_to :user
end
