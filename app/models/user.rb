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
    self.save
  end

  def current_cart
    Cart.all.find_by(:id => self.current_cart_id)
  end

  def return_or_set_current_cart
    if !self.current_cart

      current_cart = self.carts.create
      self.current_cart_id = current_cart.id
      self.save

      current_cart
    else

      self.current_cart
    end
  end


end
