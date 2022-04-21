# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!(
  [
    {name: 'ユーザー１', email: 'user1@example.com', password: 'password'},
    {name: 'ユーザー２', email: 'user2@example.com', password: 'password'},
    {name: 'ユーザー３', email: 'user3@example.com', password: 'password'}
  ]
)

trainers = Trainer.create!(
  [
    {name: 'トレーナー１', email: 'trainer1@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men01.jpg"), filename:" men01.jpg")},
    {name: 'トレーナー２', email: 'trainer2@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men02.jpg"), filename:" men02.jpg")},
    {name: 'トレーナー３', email: 'trainer3@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men04.jpg"), filename:" men04.jpg")},
    {name: 'トレーナー４', email: 'trainer4@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men05.jpg"), filename:" men05.jpg")},
    {name: 'トレーナー５', email: 'trainer5@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men07.jpg"), filename:" men07.jpg")},
    {name: 'トレーナー６', email: 'trainer6@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men08.jpg"), filename:" men08.jpg")},
    {name: 'トレーナー７', email: 'trainer7@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men09.jpg"), filename:" men09.jpg")},
    {name: 'トレーナー８', email: 'trainer8@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women01.jpg"), filename:" women01.jpg")},
    {name: 'トレーナー９', email: 'trainer9@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women02.jpg"), filename:" women02.jpg")},
    {name: 'トレーナー１０', email: 'trainer10@example.com', password: 'password',biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women03.jpg"), filename:" women03.jpg")},
    {name: 'トレーナー１１', email: 'trainer11@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women04.jpg"), filename:" women04.jpg")},
    {name: 'トレーナー１２', email: 'trainer12@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women06.jpg"), filename:" women06.jpg")},
    {name: 'トレーナー１３', email: 'trainer13@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women07.jpg"), filename:" womrn07.jpg")},
    # {name: 'トレーナー１４', email: 'trainer14@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー１５', email: 'trainer15@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー１６', email: 'trainer16@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー１７', email: 'trainer17@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー１８', email: 'trainer18@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー１９', email: 'trainer19@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー２０', email: 'trainer20@example.com', password: 'password',biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー２１', email: 'trainer21@example.com', password: 'password',biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー２２', email: 'trainer22@example.com', password: 'password',biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー２３', email: 'trainer23@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg")},
    # {name: 'トレーナー２４', email: 'trainer24@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー２５', email: 'trainer25@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー２６', email: 'trainer26@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー２７', email: 'trainer27@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー２８', email: 'trainer28@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー２９', email: 'trainer29@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー３０', email: 'trainer30@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー３１', email: 'trainer31@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
    # {name: 'トレーナー３２', email: 'trainer32@example.com', password: 'password',biography: "よろしくお願いします", gender: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:" noimage.jpg")},
  ]
  )


# Photo.create!(
#   [
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: '脚トレ最高！', trainer_id: trainers[0].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'ダイエット指導が得意です', trainer_id: trainers[1].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: '今日からはじめました！', trainer_id: trainers[2].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: '脚トレ最高！', trainer_id: trainers[3].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'ダイエット指導が得意です', trainer_id: trainers[4].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: '今日からはじめました！', trainer_id: trainers[5].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: '脚トレ最高！', trainer_id: trainers[6].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'ダイエット指導が得意です', trainer_id: trainers[7].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: '今日からはじめました！', trainer_id: trainers[8].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: '脚トレ最高！', trainer_id: trainers[9].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: 'ダイエット指導が得意です', trainer_id: trainers[10].id },
#     {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/noimage.jpg"), filename:"noimage.jpg"), caption: '今日からはじめました！', trainer_id: trainers[2].id },
#   ]
# )

# Map.create!(
#   [
#     {address: '渋谷駅', trainer_id: trainers[0].id },
#     {address: '表参道駅', trainer_id: trainers[1].id },
#     {address: '原宿駅', trainer_id: trainers[2].id },
#     {address: '上野駅', trainer_id: trainers[3].id },
#     {address: '新宿駅', trainer_id: trainers[4].id },
#     {address: '渋谷駅', trainer_id: trainers[5].id },
#     {address: '上野駅', trainer_id: trainers[6].id },
#     {address: '東京駅', trainer_id: trainers[7].id },
#     {address: '渋谷駅', trainer_id: trainers[8].id },
#     {address: '池袋駅', trainer_id: trainers[9].id },
#     {address: '原宿駅', trainer_id: trainers[10].id },
#     {address: '渋谷駅', trainer_id: trainers[2].id },
#   ]
# )


