class Tarifler < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :isim, presence: true
  validates :aciklama, presence: true, length: {minimum: 5, maximum: 500}
  default_scope -> {order(updated_at: :desc)}
  has_many :tarif_malzemes
  has_many :malzemes, through: :tarif_malzemes
end