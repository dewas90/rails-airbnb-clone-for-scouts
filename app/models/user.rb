class User < ApplicationRecord
  has_one :profile

  validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
  validates :password, presence: true, length: { in: 4..20 }
  validates :password, :format => {:with => /^[([a-z]|[A-Z])0-9_-]{6,40}$/, message: "Your password must be at least 6 characters and include at least one number and one letter."}

end
