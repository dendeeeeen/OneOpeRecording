class User < ApplicationRecord
  validates :name,  presence: true,
                    length: { maximum: 10 },
                    uniqueness: true

  has_secure_password
  validates :password, presence: true
end
