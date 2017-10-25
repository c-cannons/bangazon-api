class Customer < ApplicationRecord

  has_many :orders


  validates_presence_of :customer_first_name, :customer_last_name, :customer_acct_date,:customer_active

end
