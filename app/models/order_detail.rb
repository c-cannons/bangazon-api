class OrderDetail < ApplicationRecord

  belongs_to :product, :foreign_key => "products_id"
  belongs_to :order, :foreign_key => "orders_id"

  validates_presence_of :products_id, :orders_id

end
