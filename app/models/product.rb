class Product < ApplicationRecord


  validates_presence_of :product_name, :product_price, :product_description, :product_type_id

end
