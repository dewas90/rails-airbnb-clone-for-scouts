class CampSite < ApplicationRecord
  has_attachments :photos, maximum: 10
  # mount_uploader :photo, PhotoUploader
  belongs_to :host
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :title, presence: true, length: { in: 4..20 }
  validates :description, presence: true
  validates :capacity, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :photos, presence: true
end
