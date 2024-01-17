# メインのサンプルユーザーを1人作成する
User.create!(name:  "でんちゅう",
  password:              "foobar",
  password_confirmation: "foobar",
  authority: 2)

# メインのサンプルユーザーを1人作成する
User.create!(name:  "いつき",
  password:              "foobar",
  password_confirmation: "foobar",
  authority: 1)

# 追加のユーザーをまとめて生成する
98.times do |n|
name  =  Faker::Lorem.characters(number: 6)
password = "password"
User.create!(name:  name,
    password:              password,
    password_confirmation: password)
end