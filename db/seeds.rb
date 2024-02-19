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

# クリア記録を追加する
users.each do |user|
  100.times do |n|
    user.clearrecords.create!(weapon_id: n+1, stage_id: 1, hazard_level: rand(333))
    user.clearrecords.create!(weapon_id: n+1, stage_id: 2, hazard_level: rand(333))
    user.clearrecords.create!(weapon_id: n+1, stage_id: 3, hazard_level: rand(333))
    user.clearrecords.create!(weapon_id: n+1, stage_id: 4, hazard_level: rand(333))
    user.clearrecords.create!(weapon_id: n+1, stage_id: 5, hazard_level: rand(333))
    user.clearrecords.create!(weapon_id: n+1, stage_id: 6, hazard_level: rand(333))
    user.clearrecords.create!(weapon_id: n+1, stage_id: 7, hazard_level: rand(333))
  end
end

1.upto(100) do |wi|
  1.upto(7) do |si|
    Trophy.create!(
      weapon_id: wi,
      stage_id: si,
      color_id: 1,
      hazard_level: rand(120..200))
    Trophy.create!(
      weapon_id: wi,
      stage_id: si,
      color_id: 2,
      hazard_level: rand(80..120))
    Trophy.create!(
      weapon_id: wi,
      stage_id: si,
      color_id: 3,
      hazard_level: rand(50..80))
  end
end