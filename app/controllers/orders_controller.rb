class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.past_orders
  end

  def show
    @order = current_user.orders.where(id: params[:id]).take
    if @order
      @order.update_quantities
      render :show
    else
      flash[:error] = "You may only view your own orders"
      redirect_to @cart.order
    end
  end

  def edit
    @order = @cart.order
  end

  def update
    order = @cart.order
    order.update(order_update_params)
    order.place! if order.in_cart?
    redirect_to order
  end

  private

  def order_update_params
    params.require(:order).permit(:address, :delivery)
  end
end
