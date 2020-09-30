class Message < ApplicationRecord
  belongs_to :room #1つのルームにたくさんのメッセージがある
  belongs_to :user #1人のユーザーは複数のメッセージを送信できる
end
