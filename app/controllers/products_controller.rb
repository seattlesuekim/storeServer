class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :email))
    if @product.save
      render "show", status: :created
    else

    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: "", status: :no_content
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(params.require(:product).permit(:name, :email))
      render "show"
    else

    end
  end
end