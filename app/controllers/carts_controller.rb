class CartsController < ApplicationController
  def show
    @cartitems = current_cart.cartitems
    #item.where(cart_id: current_cart.id)
  end
end
