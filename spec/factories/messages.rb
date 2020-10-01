FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    association :user
    association :room

    after(:build) do |item|
      #io; File.openで設定したパスのファイル(public/images/test_image.png)をtest_image.pngというファイル名で保存する。
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

  end
end