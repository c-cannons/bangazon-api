class PayMethod < ApplicationRecord

 # belongs_to :orders

 validates_presence_of :payment_type, :account_number

end
