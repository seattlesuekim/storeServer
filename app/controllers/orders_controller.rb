class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(
        cart_id:  order_params[:cart],
        name:     order_params[:name],
        email:    order_params[:email],
        zip:      order_params[:zip],
        exp  :    order_params[:exp],
        cvv:      order_params[:cvv])

    if @order.save
      OrderMailer.confirmation(@order.id).deliver
      render "show"
    else
      render :status => 400
    end
  end

  private

  def order_params
    params.require(:order).permit(:cart, :name, :email, :zipcode, :exp_date, :cvv, :cc_number)
  end
end