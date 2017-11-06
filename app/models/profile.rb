class Profile < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one :host

  validates :first_name, presence: true, format
  validates :last_name, presence: true, format

end
