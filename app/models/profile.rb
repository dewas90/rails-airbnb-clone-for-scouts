class Profile < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true, format
  validates :last_name, presence: true, format

end
