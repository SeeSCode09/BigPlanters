class MetalPlanter < ApplicationRecord

  validates :product_name, presence: true
  validates :description, presence: true
  validates :model, presence: true
  validates :order, presence: true
  validates :image, presence: true

  default_scope {order(order: :asc)}

  scope :next, lambda {|id| where("id > ?",id).order("id ASC") } # this is the default ordering for AR
    scope :previous, lambda {|id| where("id < ?",id).order("id DESC") }

    def next
      MetalPlanter.next(self.id).first
    end

    def previous
      MetalPlanter.previous(self.id).last
    end


end
