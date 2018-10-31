class ServiceArea < ApplicationRecord

  validates :state, presence: true

  default_scope {order(state: :asc)}

end
