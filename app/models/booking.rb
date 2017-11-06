class Booking < ApplicationRecord
  belongs_to :profile
  belongs_to :host
  belongs_to :camp_site
end
