class OrderDetailsSerializer < ActiveModel::Serializer
  attributes :id, :products_id, :orders_id

  has_one :product

end
