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
  #validates :photos, presence: true

  def self.search(query)
    if query.to_i != 0
      query = query.to_i
    end

    camp_sites_results = []
    camp_site_title = []
    camp_site_address = []
    camp_site_category = []
    camp_site_capacity = []

    if query.is_a? Integer
      camp_site_capacity = where("capacity > #{query}")
    else
      camp_site_title = where("title LIKE ?", "%#{query}%")
      camp_site_address = where("address LIKE ?", "%#{query}%")
      camp_site_category = where("category LIKE ?", "%#{query}%")
    end

    unless camp_site_title.nil?
      camp_sites_results += camp_site_title
    end

    unless camp_site_capacity.nil?
      camp_sites_results += camp_site_capacity
    end

    unless camp_site_address.nil?
      camp_sites_results += camp_site_address
    end

    unless camp_site_category.nil?
      camp_sites_results += camp_site_category
    end

    return camp_sites_results.uniq
  end
end
