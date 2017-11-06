class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :carts
  has_many :orders
  #eventually find a way to have many items through carts (i know there's a way but not straightforward, maybe Delegate?)

  def current_cart=(cart)
    cart.save if !cart.persisted?
    self.current_cart_id = cart.id
  end

  def current_cart
    Cart.all.find_by(:id => self.current_cart_id)
  end


end
