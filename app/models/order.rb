class Order < ApplicationRecord

  validates_presence_of :customers_id, :pay_methods_id

end
