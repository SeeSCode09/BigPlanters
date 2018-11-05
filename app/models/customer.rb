class Customer < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates :phone, format: { with: /\d{1}-\d{3}-\d{3}-\d{4}/, message: "bad format" }


end
