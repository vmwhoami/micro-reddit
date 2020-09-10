class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 4,maximum: 50}
  validates :body, presence: true, uniqueness: { case_sensitive: false }, length: {minimum:5}
  
  belongs_to :user
  has_many :posts
end
