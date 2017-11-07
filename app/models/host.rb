class Host < ApplicationRecord
  belongs_to :profile
  has_many :camp_sites
  has_many :bookings

  validates :bank_account, presence: true
end
