class Post < ApplicationRecord
  belongs_to :trainer
  has_one :map, dependent: :destroy
  accepts_nested_attributes_for :map
end
