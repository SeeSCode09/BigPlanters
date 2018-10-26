class FiberglassPlanter < ApplicationRecord

  validates :product_name, presence: true
  validates :description, presence: true
  validates :model, presence: true
  validates :order, presence: true
  validates :image, presence: true


end
