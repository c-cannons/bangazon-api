class OrderDetail < ApplicationRecord



validates_presence_of :products_id, :orders_id

end
