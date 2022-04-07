# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  {name: 'ユーザー１', email: 'user1@example.com', password: 'passward'},
  {name: 'ユーザー２', email: 'user2@example.com', password: 'passward'},
  {name: 'ユーザー３', email: 'user3@example.com', password: 'passward'},
]

users.each do |user|
  # 一度ユーザーをメールアドレスで検索
  user_data = User.find_by(email: user[:email])
  # 該当ユーザーがいなければ、createする
  if user_data.nil?
    User.create(
      name: user[:name],
      email: user[:email],
      password: user[:password]
    )
  end
end


trainers = [
  {name: 'トレーナー１', email: 'trainer1@example.com', password: 'passward'},
  {name: 'トレーナー２', email: 'trainer2@example.com', password: 'passward'},
  {name: 'トレーナー３', email: 'trainer3@example.com', password: 'passward'},
]

trainers.each do |trainer|
  # 一度Trainerをメールアドレスで検索
  trainer_data = User.find_by(email: trainer[:email])
  # 該当Trainerがいなければ、createする
  if trainer_data.nil?
    Trainer.create(
      name: trainer[:name],
      email: trainer[:email],
      password: trainer[:password]
    )
  end
end