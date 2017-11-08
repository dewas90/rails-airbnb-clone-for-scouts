class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings
  has_one :host

  validates :first_name, presence: true
  validates :last_name, presence: true

end
