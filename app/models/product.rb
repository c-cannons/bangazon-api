class Product < ApplicationRecord

  has_many :order_details

  validates_presence_of :product_name, :product_price, :product_description, :product_types_id

end
