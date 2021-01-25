class Yorumlar < ApplicationRecord
  validates :aciklama, presence: true, length: {minimum: 5}
  belongs_to :user
  belongs_to :tarifler
  validates :user_id, presence: true
  validates :tarifler_id, presence: true
  default_scope -> {order(updated_at: :desc)}
end