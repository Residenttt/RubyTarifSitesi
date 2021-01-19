class Tarifler < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :isim, presence: true
  validates :aciklama, presence: true, length: {minimum: 5, maximum: 500}
end