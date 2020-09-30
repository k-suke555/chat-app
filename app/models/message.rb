class Message < ApplicationRecord
  belongs_to :room #1つのルームにたくさんのメッセージがある
  belongs_to :user #1人のユーザーは複数のメッセージを送信できる
  has_one_attached :image
  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
