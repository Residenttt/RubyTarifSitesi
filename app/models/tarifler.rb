class Tarifler < ApplicationRecord
  validates :isim, presence: true
  validates :aciklama, presence: true, length: {minimum: 5, maximum: 500}
end