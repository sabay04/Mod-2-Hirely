class User < ApplicationRecord
  has_many :item
  has_many :hires
  has_many :item_reviews, through: :hires

  validates :first_name,  presence: true
  validates :last_name,  presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }, presence: true


 def name
   "#{self.first_name} #{self.last_name}"
 end
end
