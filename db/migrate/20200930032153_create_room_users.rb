class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t| #room_usersテーブルは中間テーブル
      t.references :room, foreign_key: true #usersとroomsのテーブル情報が必要なのでforeign_key: trueを使う。
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
