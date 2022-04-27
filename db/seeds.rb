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
    {name: 'トレーナー１', email: 'trainer1@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, age: 0, activity_area: 0, teaching_history: 1, strong_part: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men01.jpg"), filename:" men01.jpg")},
    {name: 'トレーナー１２', email: 'trainer12@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, age: 1, activity_area: 1, teaching_history: 1, strong_part: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women02.jpg"), filename:" women02.jpg")},
    {name: 'トレーナー２', email: 'trainer2@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, age: 2, activity_area: 2, teaching_history: 0, strong_part: 2, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men02.jpg"), filename:" men02.jpg")},
    {name: 'トレーナー７', email: 'trainer7@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, age: 0, activity_area: 0, teaching_history: 1, strong_part: 3, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men07.jpg"), filename:" men07.jpg")},
    {name: 'トレーナー１０', email: 'trainer10@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, age: 1, activity_area: 1, teaching_history: 0, strong_part: 4, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men10.jpg"), filename:" men10.jpg")},
    {name: 'トレーナー１１', email: 'trainer11@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, age: 2, activity_area: 2, teaching_history: 1, strong_part: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women01.jpg"), filename:" women01.jpg")},
    {name: 'トレーナー１３', email: 'trainer13@example.com', password: 'password',biography: "よろしくお願いします", gender: 1, age: 0, activity_area: 0, teaching_history: 0, strong_part: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women03.jpg"), filename:" women03.jpg")},
    {name: 'トレーナー１４', email: 'trainer14@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, age: 1, activity_area: 1, teaching_history: 1, strong_part: 2, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women04.jpg"), filename:" women04.jpg")},
    {name: 'トレーナー８', email: 'trainer8@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, age: 2, activity_area: 2, teaching_history: 0, strong_part: 3, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men08.jpg"), filename:" men08.jpg")},
    {name: 'トレーナー９', email: 'trainer9@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, age: 0, activity_area: 0, teaching_history: 0, strong_part: 4, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men09.jpg"), filename:" men09.jpg")},
    {name: 'トレーナー１５', email: 'trainer15@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, age: 1, activity_area: 0, teaching_history: 1, strong_part: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women05.jpg"), filename:" women05.jpg")},
    {name: 'トレーナー１６', email: 'trainer16@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, age: 2, activity_area: 2, teaching_history: 0, strong_part: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women06.jpg"), filename:" women06.jpg")},
    {name: 'トレーナー３', email: 'trainer3@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, age: 0, activity_area: 0, teaching_history: 0, strong_part: 2, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men02.jpg"), filename:" men03.jpg")},
    {name: 'トレーナー６', email: 'trainer6@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, age: 1, activity_area: 1, teaching_history: 0, strong_part: 3, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men06.jpg"), filename:" men06.jpg")},
    {name: 'トレーナー１７', email: 'trainer17@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, age: 2, activity_area: 2, teaching_history: 1, strong_part: 4, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women07.jpg"), filename:" womrn07.jpg")},
    {name: 'トレーナー１８', email: 'trainer18@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, age: 0, activity_area: 0, teaching_history: 1, strong_part: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women08.jpg"), filename:" women08.jpg")},
    {name: 'トレーナー１９', email: 'trainer19@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, age: 1, activity_area: 1, teaching_history: 1, strong_part: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women09.jpg"), filename:" women09.jpg")},
    {name: 'トレーナー５', email: 'trainer5@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, age: 2, activity_area: 2, teaching_history: 0, strong_part: 2, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men05.jpg"), filename:" men05.jpg")},
    {name: 'トレーナー４', email: 'trainer4@example.com', password: 'password', biography: "よろしくお願いします", gender: 0, age: 0, activity_area: 0, teaching_history: 1, strong_part: 3, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/men04.jpg"), filename:" men04.jpg")},
    {name: 'トレーナー２０', email: 'trainer20@example.com', password: 'password', biography: "よろしくお願いします", gender: 1, age: 1, activity_area: 1, teaching_history: 1, strong_part: 4, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/women10.jpg"), filename:" women10.jpg")},
  ]
  )


Photo.create!(
  [
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/posts/gym.jpg"), filename:"gym.jpg"), caption: '新しいジム！', trainer_id: trainers[11].id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/posts/hambarger.jpg"), filename:"hambarger.jpg"), caption: '今日はチートデイ！', trainer_id: trainers[17].id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/posts/rockcrime.jpg"), filename:"rockcrime.jpg"), caption: '趣味はロッククライミングです！', trainer_id: trainers[14].id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/posts/running.jpg"), filename:"running.jpg"), caption: '毎朝必ず走ってます！', trainer_id: trainers[4].id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/posts/training.jpg"), filename:"training.jpg"), caption: 'ダイエット指導が得意です！もちろんボディメイクにも対応できますので、ぜひお声がけください！！', trainer_id: trainers[3].id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/posts/yoga.jpg"), filename:"yoga.jpg"), caption: 'ヨガも教えられます！', trainer_id: trainers[19].id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/posts/nike.jpg"), filename:"nike.jpg"), caption: '新しいシューズ', trainer_id: trainers[19].id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/posts/personal.jpg"), filename:"personal.jpg"), caption: '男女どちらでも対応可能です！！', trainer_id: trainers[19].id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/posts/fashion.jpg"), filename:"fashion.jpg"), caption: 'スポーツウエア大好き！', trainer_id: trainers[19].id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/posts/breakfast.jpg"), filename:"breakfast.jpg"), caption: '朝食はこれで痩せました！', trainer_id: trainers[19].id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/posts/personal2.jpg"), filename:"personal2.jpg"), caption: 'パーソナル受けてきました～！', trainer_id: trainers[19].id },
  ]
)