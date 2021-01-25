class Malzeme < ApplicationRecord
  validates :name, presence: true, length: {minimum: 2, maximum: 30}
  validates_uniqueness_of :name
  has_many :tarif_malzemes
  has_many :tariflers, through: :tarif_malzemes
end