class ProductsController < ApplicationController

  http_basic_authenticate_with name: "Chandra", password: "secret", except: [:index, :show]


  def index
    @products = Product.all

  #   if params[:role].present?
  #     @products = Product.joins(:patient).where(patients: { role: params[:role] })
  #   else
  #     @products = Product.all
  #   end
  # end


  end
  def delete_products
  Product.destroy(params[:product_ids])
  redirect_to products_path, notice: "Selected users have been deleted"
end

  def name
  @new = Product.new()
  end



def testfor
  @product=Product.new
end



  def new
    @product=Product.new
  end
  def show
     @product = Product.find(params[:id])
     puts "======#{@product.first_name}====="
  end
  def edit
    @product=Product.find(params[:id])
  end
  def create
    @product= Product.new(product_params)
     if @product.save
    redirect_to product_path(@product.id)
  else
    render 'testfor'
  end

     #render plain: params[:student1].inspect
  end

  def update
  @product = Product.find(params[:id])

  if @product.update(product_params)
    redirect_to product_path(@product.id)
  else
    render 'edit'
  end
end
def destroy
  @product = Product.find(params[:id])
  @product.destroy

  redirect_to products_path
end
   private
   def product_params
    params.require(:product).permit(:first_name, :last_name,  :gender, :address, :peraddress, :contactNo)
  end
end
