class Hire < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_many :item_reviews
end
