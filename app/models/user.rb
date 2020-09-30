class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #nameカラムにpresence: trueを使っているので空の場合はDBに保存不可
  validates :name, presence: true  

  has_many :room_users #多対多のため中間テーブル記載
  has_many :rooms, through: :room_users
  has_many :messages
end
