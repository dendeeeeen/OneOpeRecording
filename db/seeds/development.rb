users = []

# サンプルユーザーを1人作成する
users << User.create!(name:  "でんちゅう",
  password:              "hogehoge",
  password_confirmation: "hogehoge",
  authority: 2)

# サンプルユーザーを1人作成する
users << User.create!(name:  "いつき",
  password:              "hogehoge",
  password_confirmation: "hogehoge",
  authority: 2)

# クリア記録を追加する
users.each do |user|
  80.times do |n|
    user.clearrecords.create!(weapon_id: n+1, stage_id: 1, hazard_level: 0)
    user.clearrecords.create!(weapon_id: n+1, stage_id: 2, hazard_level: 0)
    user.clearrecords.create!(weapon_id: n+1, stage_id: 3, hazard_level: 0)
    user.clearrecords.create!(weapon_id: n+1, stage_id: 4, hazard_level: 0)
    user.clearrecords.create!(weapon_id: n+1, stage_id: 5, hazard_level: 0)
    user.clearrecords.create!(weapon_id: n+1, stage_id: 6, hazard_level: 0)
    user.clearrecords.create!(weapon_id: n+1, stage_id: 7, hazard_level: 0)
  end
end

1.upto(80) do |wi|
  1.upto(7) do |si|
    Trophy.create!(
      weapon_id: wi,
      stage_id: si,
      color_id: 1,
      hazard_level: 120)
    Trophy.create!(
      weapon_id: wi,
      stage_id: si,
      color_id: 2,
      hazard_level: 80)
    Trophy.create!(
      weapon_id: wi,
      stage_id: si,
      color_id: 3,
      hazard_level: 50)
  end
end