class CartItemsController < ApplicationController
    def new
        @cartitem = Cartitem.new(product_id: params[:product_id])
    end
    def create
        logger.debug "--" + params[:cartitem][:product_id]
        @cartitem = Cartitem.new(product_id: params[:cartitem][:product_id], 
        qty: params[:cartitem][:qty], cart_id: current_cart.id)
        if @cartitem.save
          flash[:info] = 'カートに商品を追加しました'
          redirect_to carts_show_path
        else
          render 'new'
        end    
    end
    def destroy
        cartitem = Cartitem.find(params[:id])
        cartitem.destroy
        redirect_to carts_show_path
    end
end
