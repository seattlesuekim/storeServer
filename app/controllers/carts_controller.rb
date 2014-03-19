class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def create
    @cart = Cart.new(params.require(:cart).permit(:name, :email))
    if @cart.save
      render "show", status: :created
    else

    end
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    render json: "", status: :no_content
  end

  def update
    @cart = Cart.find(params[:id])
    if @cart.update(params.require(:cart).permit(:name, :email))
      render "show"
    else

    end
  end
end