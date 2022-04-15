# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users = User.create!(
#   [{name: 'ユーザー１', email: 'user1@example.com', password: 'password'}]
# )

# trainers = Trainer.create!(
#   [
#     {name: 'トレーナー１', email: 'trainer1@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/キャサリン.jpg"), filename:" キャサリン.jpg")},
#     {name: 'トレーナー２', email: 'trainer2@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ジェイク.jpg"), filename:" ジェイク.jpg")},
#     {name: 'トレーナー３', email: 'trainer3@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ジョニー.jpg"), filename:" ジョニー.jpg")},
#     {name: 'トレーナー４', email: 'trainer4@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/スミス.jpg"), filename:" スミス.jpg")},
#     {name: 'トレーナー５', email: 'trainer5@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ダン.jpg"), filename:" ダン.jpg")},
#     {name: 'トレーナー６', email: 'trainer6@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ニコラス.jpg"), filename:" ニコラス.jpg")},
#     {name: 'トレーナー７', email: 'trainer7@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/マイケル.jpg"), filename:" マイケル.jpg")},
#     {name: 'トレーナー８', email: 'trainer8@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ミランダ.jpg"), filename:" ミランダ.jpg")},
#     {name: 'トレーナー９', email: 'trainer9@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/リサ.jpg"), filename:" リサ.jpg")},
#     {name: 'トレーナー１０', email: 'trainer10@example.com', password: 'password',biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ワトソン.jpg"), filename:" ワトソン.jpg")}
#   ]
#   )


# Photo.create!(
#   [
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: '脚トレ最高！', trainer_id: trainers[0].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'ダイエット指導が得意です', trainer_id: trainers[1].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: '今日からはじめました！', trainer_id: trainers[2].id }
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[3].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[10].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[7].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[3].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[9].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[0].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[2].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[5].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[10].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[3].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[10].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[7].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[3].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[1].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[6].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[9].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[2].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'test', trainer_id: trainers[8].id }
#   ]
# )

100.times do |n|
  Trainer.create!(
    email: "trainer#{n + 1}@sample.com",
    name: "トレーナー#{n + 1}",
    password: "password"
  )
end