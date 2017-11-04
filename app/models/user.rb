class User < ActiveRecord::Base
  has_many :carts
  has_many :orders
  #eventually find a way to have many items through carts (i know there's a way but not straightforward, maybe Delegate?)
end
