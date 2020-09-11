class Comment < ApplicationRecord
  validates :comment, presence: true, length: {maximum: 250}

  belongs_to :post, :dependent => :destroy
  belongs_to :user
end
