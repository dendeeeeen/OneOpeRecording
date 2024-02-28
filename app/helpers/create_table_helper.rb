module CreateTableHelper
  def stages
    @stages = [
      { name: "アラマキ砦",               path: asset_path("bg_sockeye_station.png")                },
      { name: "ムニ・エール海洋発電所",   path: asset_path("bg_gone_fission_hydroplant.png")        },
      { name: "シェケナダム",             path: asset_path("bg_spawning_grounds.png")               },
      { name: "難破船ドン・ブラコ",       path: asset_path("bg_marooners_bay.png")                  },
      { name: "すじこジャンクション跡",   path: asset_path("bg_jammin_salmon_junction.png")         },
      { name: "トキシラズいぶし工房",     path: asset_path("bg_salmonid_smokeyard.png")             },
      { name: "どんぴこ闘技場",           path: asset_path("bg_bonerattle_arena.png")               },
    ]
  end

  def weapons
    @weapons = [
      { name: "ボールドマーカー",         path: asset_path("weapon_shooter_sploosh-o-matic.png")    },
      { name: "わかばシューター",         path: asset_path("weapon_shooter_splattershotjr.png")     },
      { name: "シャープマーカー",         path: asset_path("weapon_shooter_splash-o-matic.png")     },
      { name: "プロモデラーMG",           path: asset_path("weapon_shooter_aerospraymg.png")        },
      { name: "スプラシューター",         path: asset_path("weapon_shooter_splattershot.png")       },
      { name: ".52ガロン",                path: asset_path("weapon_shooter_52gal.png")              },
      { name: "N-ZAP85",                  path: asset_path("weapon_shooter_n-zap85.png")            },
      { name: "プライムシューター",       path: asset_path("weapon_shooter_splattershotpro.png")    },
      { name: ".96ガロン",                path: asset_path("weapon_shooter_96gal.png")              },
      { name: "ジェットスイーパー",       path: asset_path("weapon_shooter_jetsquelcher.png")       },
      { name: "スペースシューター",       path: asset_path("weapon_shooter_splattershotnova.png")   },
      { name: "ノヴァブラスター",         path: asset_path("weapon_blaster_lunablaster.png")        },
      { name: "ホットブラスター",         path: asset_path("weapon_blaster_blaster.png")            },
      { name: "ロングブラスター",         path: asset_path("weapon_blaster_rangeblaster.png")       },
      { name: "クラッシュブラスター",     path: asset_path("weapon_blaster_clashblaster.png")       },
      { name: "ラピッドブラスター",       path: asset_path("weapon_blaster_rapidblaster.png")       },
      { name: "Rブラスターエリート",      path: asset_path("weapon_blaster_rapidblasterpro.png")    },
      { name: "S-BLAST92",                path: asset_path("weapon_blaster_sblast92.png")           },
      { name: "H3リールガン",             path: asset_path("weapon_shooter_h-3nozzlenose.png")      },
      { name: "L3リールガン",             path: asset_path("weapon_shooter_l-3nozzlenose.png")      },
      { name: "ボトルガイザー",           path: asset_path("weapon_shooter_squeezer.png")           },
      { name: "カーボンローラー",         path: asset_path("weapon_roller_carbonroller.png")        },
      { name: "スプラローラー",           path: asset_path("weapon_roller_splatroller.png")         },
      { name: "ダイナモローラー",         path: asset_path("weapon_roller_dynamoroller.png")        },
      { name: "ヴァリアブルローラー",     path: asset_path("weapon_roller_flingzaroller.png")       },
      { name: "ワイドローラー",           path: asset_path("weapon_roller_bigswigroller.png")       },
      { name: "パブロ",                   path: asset_path("weapon_brush_inkbrush.png")             },
      { name: "ホクサイ",                 path: asset_path("weapon_brush_octobrush.png")            },
      { name: "フィンセント",             path: asset_path("weapon_brush_painbrush.png")            },
      { name: "スクイックリンα",         path: asset_path("weapon_charger_classicsquiffer.png")    },
      { name: "スプラチャージャー",       path: asset_path("weapon_charger_splatcharger.png")       },
      { name: "リッター4K",               path: asset_path("weapon_charger_e-liter4k.png")          },
      { name: "14式竹筒銃・甲",           path: asset_path("weapon_charger_bamboozler14mkI.png")    },
      { name: "ソイチューバー",           path: asset_path("weapon_charger_gootuber.png")           },
      { name: "R-PEN/5H",                 path: asset_path("weapon_charger_snipewriter5h.png")      },
      { name: "バケットスロッシャー",     path: asset_path("weapon_slosher_slosher.png")            },
      { name: "ヒッセン",                 path: asset_path("weapon_slosher_trislosher.png")         },
      { name: "スクリュースロッシャー",   path: asset_path("weapon_slosher_sloshingmachine.png")    },
      { name: "オーバーフロッシャー",     path: asset_path("weapon_slosher_bloblobber.png")         },
      { name: "エクスプロッシャー",       path: asset_path("weapon_slosher_explosher.png")          },
      { name: "モップリン",               path: asset_path("weapon_slosher_dreadwringer.png")       },
      { name: "スプラスピナー",           path: asset_path("weapon_spinner_minisplatling.png")      },
      { name: "バレルスピナー",           path: asset_path("weapon_spinner_heavysplatling.png")     },
      { name: "ハイドラント",             path: asset_path("weapon_spinner_hydrasplatling.png")     },
      { name: "クーゲルシュライバー",     path: asset_path("weapon_spinner_ballpointsplatling.png") },
      { name: "ノーチラス47",             path: asset_path("weapon_spinner_nautilus47.png")         },
      { name: "イグザミナー",             path: asset_path("weapon_spinner_heavyeditsplatling.png") },
      { name: "スパッタリー",             path: asset_path("weapon_maneuver_dappledualies.png")     },
      { name: "スプラマニューバー",       path: asset_path("weapon_maneuver_splatdualies.png")      },
      { name: "ケルビン525",              path: asset_path("weapon_maneuver_gloogadualies.png")     },
      { name: "デュアルスイーパー",       path: asset_path("weapon_maneuver_dualiesquelchers.png")  },
      { name: "クアッドホッパーブラック", path: asset_path("weapon_maneuver_darktetradualies.png")  },
      { name: "パラシェルター",           path: asset_path("weapon_shelter_splatbrella.png")        },
      { name: "スパイガジェット",         path: asset_path("weapon_shelter_undercoverbrella.png")   },
      { name: "キャンピングシェルター",   path: asset_path("weapon_shelter_tentabrella.png")        },
      { name: "トライストリンガー",       path: asset_path("weapon_stringer_tristringer.png")       },
      { name: "LACT-450",                 path: asset_path("weapon_stringer_reeflux450.png")        },
      { name: "ジムワイパー",             path: asset_path("weapon_saber_splatanastamper.png")      },
      { name: "ドライブワイパー",         path: asset_path("weapon_saber_splatanawiper.png")        },
      { name: "ガエンFF",                 path: asset_path("weapon_maneuver_douserdualiesff.png")   },
      { name: "24式張替傘・甲",           path: asset_path("weapon_shelter_recycledbrella24mki.png") },
      { name: "ランダム",                 path: asset_path("weapon_random.png")                     },
      { name: "クマフェス",               path: asset_path("weapon_random_golden.png")              },
    ]
  end
  
  def get_trophy(stage_id, weapon_id, hazardLevel)
    if hazardLevel >= 200
      asset_path("weapon_trophy_rainbow.png")
    elsif hazardLevel >= Trophy.find_by(stage_id: stage_id, weapon_id: weapon_id, color_id: 1).hazard_level
      asset_path("weapon_trophy_gold.png")
    elsif hazardLevel >= Trophy.find_by(stage_id: stage_id, weapon_id: weapon_id, color_id: 2).hazard_level
      asset_path("weapon_trophy_silver.png")
    elsif hazardLevel >= Trophy.find_by(stage_id: stage_id, weapon_id: weapon_id, color_id: 3).hazard_level
      asset_path("weapon_trophy_bronze.png")
    else
      nil
    end
  end
end
