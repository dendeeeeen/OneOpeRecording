module CreateTableHelper
  def stages
    @stages = [
      { id: 1, name: "アラマキ砦",               image: "bg_sockeye_station.png"                },
      { id: 2, name: "ムニ・エール海洋発電所",   image: "bg_gone_fission_hydroplant.png"        },
      { id: 3, name: "シェケナダム",             image: "bg_spawning_grounds.png"               },
      { id: 4, name: "難破船ドン・ブラコ",       image: "bg_marooners_bay.png"                  },
      { id: 5, name: "すじこジャンクション跡",   image: "bg_jammin_salmon_junction.png"         },
      { id: 6, name: "トキシラズいぶし工房",     image: "bg_salmonid_smokeyard.png"             },
      { id: 7, name: "どんぴこ闘技場",           image: "bg_bonerattle_arena.png"               },
    ]
  end

  def weapons
    @weapons = [
      { id:  1, name: "ボールドマーカー",         image: "weapon_shooter_sploosh-o-matic.png"    },
      { id:  2, name: "わかばシューター",         image: "weapon_shooter_splattershotjr.png"     },
      { id:  3, name: "シャープマーカー",         image: "weapon_shooter_splash-o-matic.png"     },
      { id:  4, name: "プロモデラーMG",           image: "weapon_shooter_aerospraymg.png"        },
      { id:  5, name: "スプラシューター",         image: "weapon_shooter_splattershot.png"       },
      { id:  6, name: ".52ガロン",                image: "weapon_shooter_52gal.png"              },
      { id:  7, name: "N-ZAP85",                  image: "weapon_shooter_n-zap85.png"            },
      { id:  8, name: "プライムシューター",       image: "weapon_shooter_splattershotpro.png"    },
      { id:  9, name: ".96ガロン",                image: "weapon_shooter_96gal.png"              },
      { id: 10, name: "ジェットスイーパー",       image: "weapon_shooter_jetsquelcher.png"       },
      { id: 11, name: "スペースシューター",       image: "weapon_shooter_splattershotnova.png"   },
      { id: 12, name: "ノヴァブラスター",         image: "weapon_blaster_lunablaster.png"        },
      { id: 13, name: "ホットブラスター",         image: "weapon_blaster_blaster.png"            },
      { id: 14, name: "ロングブラスター",         image: "weapon_blaster_rangeblaster.png"       },
      { id: 15, name: "クラッシュブラスター",     image: "weapon_blaster_clashblaster.png"       },
      { id: 16, name: "ラピッドブラスター",       image: "weapon_blaster_rapidblaster.png"       },
      { id: 17, name: "Rブラスターエリート",      image: "weapon_blaster_rapidblasterpro.png"    },
      { id: 18, name: "S-BLAST92",                image: "weapon_blaster_sblast92.png"           },
      { id: 19, name: "H3リールガン",             image: "weapon_shooter_h-3nozzlenose.png"      },
      { id: 20, name: "L3リールガン",             image: "weapon_shooter_l-3nozzlenose.png"      },
      { id: 21, name: "ボトルガイザー",           image: "weapon_shooter_squeezer.png"           },
      { id: 22, name: "カーボンローラー",         image: "weapon_roller_carbonroller.png"        },
      { id: 23, name: "スプラローラー",           image: "weapon_roller_splatroller.png"         },
      { id: 24, name: "ダイナモローラー",         image: "weapon_roller_dynamoroller.png"        },
      { id: 25, name: "ヴァリアブルローラー",     image: "weapon_roller_flingzaroller.png"       },
      { id: 26, name: "ワイドローラー",           image: "weapon_roller_bigswigroller.png"       },
      { id: 27, name: "パブロ",                   image: "weapon_brush_inkbrush.png"             },
      { id: 28, name: "ホクサイ",                 image: "weapon_brush_octobrush.png"            },
      { id: 29, name: "フィンセント",             image: "weapon_brush_painbrush.png"            },
      { id: 30, name: "スクイックリンα",         image: "weapon_charger_classicsquiffer.png"    },
      { id: 31, name: "スプラチャージャー",       image: "weapon_charger_splatcharger.png"       },
      { id: 32, name: "リッター4K",               image: "weapon_charger_e-liter4k.png"          },
      { id: 33, name: "14式竹筒銃・甲",           image: "weapon_charger_bamboozler14mkI.png"    },
      { id: 34, name: "ソイチューバー",           image: "weapon_charger_gootuber.png"           },
      { id: 35, name: "R-PEN/5H",                 image: "weapon_charger_snipewriter5h.png"      },
      { id: 36, name: "バケットスロッシャー",     image: "weapon_slosher_slosher.png"            },
      { id: 37, name: "ヒッセン",                 image: "weapon_slosher_trislosher.png"         },
      { id: 38, name: "スクリュースロッシャー",   image: "weapon_slosher_sloshingmachine.png"    },
      { id: 39, name: "オーバーフロッシャー",     image: "weapon_slosher_bloblobber.png"         },
      { id: 40, name: "エクスプロッシャー",       image: "weapon_slosher_explosher.png"          },
      { id: 41, name: "モップリン",               image: "weapon_slosher_dreadwringer.png"       },
      { id: 42, name: "スプラスピナー",           image: "weapon_spinner_minisplatling.png"      },
      { id: 43, name: "バレルスピナー",           image: "weapon_spinner_heavysplatling.png"     },
      { id: 44, name: "ハイドラント",             image: "weapon_spinner_hydrasplatling.png"     },
      { id: 45, name: "クーゲルシュライバー",     image: "weapon_spinner_ballpointsplatling.png" },
      { id: 46, name: "ノーチラス47",             image: "weapon_spinner_nautilus47.png"         },
      { id: 47, name: "イグザミナー",             image: "weapon_spinner_heavyeditsplatling.png" },
      { id: 48, name: "スパッタリー",             image: "weapon_maneuver_dappledualies.png"     },
      { id: 49, name: "スプラマニューバー",       image: "weapon_maneuver_splatdualies.png"      },
      { id: 50, name: "ケルビン525",              image: "weapon_maneuver_gloogadualies.png"     },
      { id: 51, name: "デュアルスイーパー",       image: "weapon_maneuver_dualiesquelchers.png"  },
      { id: 52, name: "クアッドホッパーブラック", image: "weapon_maneuver_darktetradualies.png"  },
      { id: 53, name: "ガエンFF",                 image: "weapon_maneuver_douserdualiesff.png"   },
      { id: 54, name: "パラシェルター",           image: "weapon_shelter_splatbrella.png"        },
      { id: 54, name: "スパイガジェット",         image: "weapon_shelter_undercoverbrella.png"   },
      { id: 55, name: "24式張替傘・甲",           image: "weapon_shelter_recycledbrella24mki.png" },
      { id: 56, name: "キャンピングシェルター",   image: "weapon_shelter_tentabrella.png"        },
      { id: 57, name: "トライストリンガー",       image: "weapon_stringer_tristringer.png"       },
      { id: 58, name: "LACT-450",                 image: "weapon_stringer_reeflux450.png"        },
      { id: 59, name: "ジムワイパー",             image: "weapon_saber_splatanastamper.png"      },
      { id: 60, name: "ドライブワイパー",         image: "weapon_saber_splatanawiper.png"        },
      { id: 61, name: "ランダム",                 image: "weapon_random.png"                     },
      { id: 62, name: "クマフェス",               image: "weapon_random_golden.png"              },
    ]
  end
  
  def get_trophy(stage_id, weapon_id, hazardLevel)
    if hazardLevel >= 200
      "weapon_trophy_rainbow.png"
    elsif hazardLevel >= Trophy.find_by(stage_id: stage_id, weapon_id: weapon_id, color_id: 1).hazard_level
      "weapon_trophy_gold.png"
    elsif hazardLevel >= Trophy.find_by(stage_id: stage_id, weapon_id: weapon_id, color_id: 2).hazard_level
      "weapon_trophy_silver.png"
    elsif hazardLevel >= Trophy.find_by(stage_id: stage_id, weapon_id: weapon_id, color_id: 3).hazard_level
      "weapon_trophy_bronze.png"
    else
      nil
    end
  end
end
