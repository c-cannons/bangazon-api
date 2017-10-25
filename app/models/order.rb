class Order < ApplicationRecord

  has_many :order_details, :foreign_key => "orders_id"
  has_many :products, through: :order_details

  validates_presence_of :customers_id

end
