class Restaurant < ApplicationRecord
  belongs_to :user

  has_many :comments

  # def comments
  #   Comment.where(restaurant_id: self.id)
  # end
end
