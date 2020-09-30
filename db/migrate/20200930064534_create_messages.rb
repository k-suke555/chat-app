class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string  :content
      t.references :room, foreign_key: true #foreign_keyという外部キーがつけて保存時は外部キーを必須とする。
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
