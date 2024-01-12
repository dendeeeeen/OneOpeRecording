# メインのサンプルユーザーを1人作成する
User.create!(name:  "でんちゅう",
  password:              "foobar",
  password_confirmation: "foobar")

# 追加のユーザーをまとめて生成する
99.times do |n|
name  =  Faker::Lorem.characters(number: 6)
password = "password"
User.create!(name:  name,
    password:              password,
    password_confirmation: password)
end