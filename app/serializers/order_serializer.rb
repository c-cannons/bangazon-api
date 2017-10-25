class OrderSerializer < ActiveModel::Serializer
  attributes :id, :customers_id, :pay_methods_id

  has_many :products

end
