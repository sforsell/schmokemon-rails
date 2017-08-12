class Pokemon < ApplicationRecord
  belongs_to :user
  validates :poke_id, presence: true
end
