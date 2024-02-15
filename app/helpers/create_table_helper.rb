module CreateTableHelper
  def stages
    @stages = [
      { name: "アラマキ砦",               path: "/assets/bg_sockeye_station.png"                },
      { name: "ムニ・エール海洋発電所",   path: "/assets/bg_gone_fission_hydroplant.png"        },
      { name: "シェケナダム",             path: "/assets/bg_spawning_grounds.png"               },
      { name: "難破船ドン・ブラコ",       path: "/assets/bg_marooners_bay.png"                  },
      { name: "すじこジャンクション跡",   path: "/assets/bg_jammin_salmon_junction.png"         },
      { name: "トキシラズいぶし工房",     path: "/assets/bg_salmonid_smokeyard.png"             },
    ]
  end

  def weapons
    @weapons = [
      { name: "ボールドマーカー",         path: "/assets/weapon_shooter_sploosh-o-matic.png"    },
      { name: "わかばシューター",         path: "/assets/weapon_shooter_splattershotjr.png"     },
      { name: "シャープマーカー",         path: "/assets/weapon_shooter_splash-o-matic.png"     },
      { name: "プロモデラーMG",           path: "/assets/weapon_shooter_aerospraymg.png"        },
      { name: "スプラシューター",         path: "/assets/weapon_shooter_splattershot.png"       },
      { name: ".52ガロン",                path: "/assets/weapon_shooter_52gal.png"              },
      { name: "N-ZAP85",                  path: "/assets/weapon_shooter_n-zap85.png"            },
      { name: "プライムシューター",       path: "/assets/weapon_shooter_splattershotpro.png"    },
      { name: ".96ガロン",                path: "/assets/weapon_shooter_96gal.png"              },
      { name: "ジェットスイーパー",       path: "/assets/weapon_shooter_jetsquelcher.png"       },
      { name: "スペースシューター",       path: "/assets/weapon_shooter_splattershotnova.png"   },
      { name: "ノヴァブラスター",         path: "/assets/weapon_blaster_lunablaster.png"        },
      { name: "ホットブラスター",         path: "/assets/weapon_blaster_blaster.png"            },
      { name: "ロングブラスター",         path: "/assets/weapon_blaster_rangeblaster.png"       },
      { name: "クラッシュブラスター",     path: "/assets/weapon_blaster_clashblaster.png"       },
      { name: "ラピッドブラスター",       path: "/assets/weapon_blaster_rapidblaster.png"       },
      { name: "Rブラスターエリート",      path: "/assets/weapon_blaster_rapidblasterpro.png"    },
      { name: "S-BLAST92",                path: "/assets/weapon_blaster_sblast92.png"           },
      { name: "H3リールガン",             path: "/assets/weapon_shooter_h-3nozzlenose.png"      },
      { name: "L3リールガン",             path: "/assets/weapon_shooter_l-3nozzlenose.png"      },
      { name: "ボトルガイザー",           path: "/assets/weapon_shooter_squeezer.png"           },
      { name: "カーボンローラー",         path: "/assets/weapon_roller_carbonroller.png"        },
      { name: "スプラローラー",           path: "/assets/weapon_roller_splatroller.png"         },
      { name: "ダイナモローラー",         path: "/assets/weapon_roller_dynamoroller.png"        },
      { name: "ヴァリアブルローラー",     path: "/assets/weapon_roller_flingzaroller.png"       },
      { name: "ワイドローラー",           path: "/assets/weapon_roller_bigswigroller.png"       },
      { name: "パブロ",                   path: "/assets/weapon_brush_inkbrush.png"             },
      { name: "ホクサイ",                 path: "/assets/weapon_brush_octobrush.png"            },
      { name: "フィンセント",             path: "/assets/weapon_brush_painbrush.png"            },
      { name: "スクイックリンα",         path: "/assets/weapon_charger_classicsquiffer.png"    },
      { name: "スプラチャージャー",       path: "/assets/weapon_charger_splatcharger.png"       },
      { name: "リッター4K",               path: "/assets/weapon_charger_e-liter4k.png"          },
      { name: "14式竹筒銃・甲",           path: "/assets/weapon_charger_bamboozler14mkI.png"    },
      { name: "ソイチューバー",           path: "/assets/weapon_charger_gootuber.png"           },
      { name: "R-PEN/5H",                 path: "/assets/weapon_charger_snipewriter5h.png"      },
      { name: "バケットスロッシャー",     path: "/assets/weapon_slosher_slosher.png"            },
      { name: "ヒッセン",                 path: "/assets/weapon_slosher_trislosher.png"         },
      { name: "スクリュースロッシャー",   path: "/assets/weapon_slosher_sloshingmachine.png"    },
      { name: "オーバーフロッシャー",     path: "/assets/weapon_slosher_bloblobber.png"         },
      { name: "エクスプロッシャー",       path: "/assets/weapon_slosher_explosher.png"          },
      { name: "モップリン",               path: "/assets/weapon_slosher_dreadwringer.png"       },
      { name: "スプラスピナー",           path: "/assets/weapon_spinner_minisplatling.png"      },
      { name: "バレルスピナー",           path: "/assets/weapon_spinner_heavysplatling.png"     },
      { name: "ハイドラント",             path: "/assets/weapon_spinner_hydrasplatling.png"     },
      { name: "クーゲルシュライバー",     path: "/assets/weapon_spinner_ballpointsplatling.png" },
      { name: "ノーチラス47",             path: "/assets/weapon_spinner_nautilus47.png"         },
      { name: "イグザミナー",             path: "/assets/weapon_spinner_heavyeditsplatling.png" },
      { name: "スパッタリー",             path: "/assets/weapon_maneuver_dappledualies.png"     },
      { name: "スプラマニューバー",       path: "/assets/weapon_maneuver_splatdualies.png"      },
      { name: "ケルビン525",              path: "/assets/weapon_maneuver_gloogadualies.png"     },
      { name: "デュアルスイーパー",       path: "/assets/weapon_maneuver_dualiesquelchers.png"  },
      { name: "クアッドホッパーブラック", path: "/assets/weapon_maneuver_darktetradualies.png"  },
      { name: "パラシェルター",           path: "/assets/weapon_shelter_splatbrella.png"        },
      { name: "スパイガジェット",         path: "/assets/weapon_shelter_undercoverbrella.png"   },
      { name: "キャンピングシェルター",   path: "/assets/weapon_shelter_tentabrella.png"        },
      { name: "トライストリンガー",       path: "/assets/weapon_stringer_tristringer.png"       },
      { name: "LACT-450",                 path: "/assets/weapon_stringer_reeflux450.png"        },
      { name: "ジムワイパー",             path: "/assets/weapon_saber_splatanastamper.png"      },
      { name: "ドライブワイパー",         path: "/assets/weapon_saber_splatanawiper.png"        },
      { name: "ランダム",                 path: "/assets/weapon_random.png"                     },
      { name: "クマフェス",               path: "/assets/weapon_random_golden.png"              },
    ]
  end
  
  def trophy(hazardLevel)
    if hazardLevel >= 200
      "/assets/weapon_trophy_rainbow.png"
    elsif hazardLevel >= 120
      "/assets/weapon_trophy_gold.png"
    elsif hazardLevel >= 80
      "/assets/weapon_trophy_silver.png"
    elsif hazardLevel >= 50
      "/assets/weapon_trophy_bronze.png"
    else
      nil
    end
  end
end
