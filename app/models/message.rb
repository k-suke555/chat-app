class Message < ApplicationRecord
  belongs_to :room #1つのルームにたくさんのメッセージがある
  belongs_to :user #1人のユーザーは複数のメッセージを送信できる
  has_one_attached :image

  validates :content, presence: true
end
