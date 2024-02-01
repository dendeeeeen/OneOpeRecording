class Clearrecord < ApplicationRecord
  belongs_to :user
  default_scope -> { order(weapon_id: :asc).order(stage_id: :asc) }
  validates :weapon_id, presence: true, numericality: { in: 1..100 }
  validates :stage_id,  presence: true, numericality: { in: 1..10 }
  validates :user_id,   presence: true
end
