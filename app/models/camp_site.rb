class CampSite < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :host
  has_many :bookings

  validates :title, presence: true, length: { in: 4..20 }
  validates :description, presence: true
  validates :capacity, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :photo, presence: true
end
