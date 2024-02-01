users = []

# メインのサンプルユーザーを1人作成する
users << User.create!(name:  "でんちゅう",
  password:              "foobar",
  password_confirmation: "foobar",
  authority: 2)

# メインのサンプルユーザーを1人作成する
users << User.create!(name:  "いつき",
  password:              "foobar",
  password_confirmation: "foobar",
  authority: 1)

# 追加のユーザーをまとめて生成する
# 98.times do |n|
# name  =  Faker::Lorem.characters(number: 6)
# password = "password"
# users << User.create!(name:  name,
#     password:              password,
#     password_confirmation: password)
# end

# クリア記録を追加する
users.each do |user|
  71.times do |n|
    user.clearrecords.create!(weapon_id: n+1, stage_id: 1, hazard_level: rand(333))
    user.clearrecords.create!(weapon_id: n+1, stage_id: 2, hazard_level: rand(333))
    user.clearrecords.create!(weapon_id: n+1, stage_id: 3, hazard_level: rand(333))
    user.clearrecords.create!(weapon_id: n+1, stage_id: 4, hazard_level: rand(333))
    user.clearrecords.create!(weapon_id: n+1, stage_id: 5, hazard_level: rand(333))
    user.clearrecords.create!(weapon_id: n+1, stage_id: 6, hazard_level: rand(333))
  end
end
