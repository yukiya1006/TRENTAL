class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :trainer
end
