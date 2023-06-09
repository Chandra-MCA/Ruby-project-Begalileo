class ProductsController < ApplicationController

  http_basic_authenticate_with name: "Chandra", password: "secret", except: [:index, :show]


   def index
     @products = Product.all
         if params[:search]
      @products = Product.joins(:patients).where('patients.role LIKE ?', "%#{params[:search]}%")
    else
      @products = Product.all
    end
  end

#   @products = Product.all
#    @products = @products.includes(:patients).where(patients: { role: params[:role] }) if params[:role].present?
#
#
#
#   if params[:search].present?
#     search_term = "%#{params[:search]}%"
#     @productss = Product.where("first_name LIKE ? OR gender LIKE ? OR contactNo LIKE ?", search_term, search_term, search_term)
#   else
#     @productss = Product.all
#   end
# end
  #   @products = Product.all
  #
  #   if params[:role].present?
  #     @products = Product.includes(:patient).where(patients: { role: params[:role] })
  #   else
  #     @products = Product.all
  #   end
  # end



  def delete_products
  Product.destroy(params[:product_ids])
  redirect_to products_path, notice: "Selected users have been deleted"
end

  def name
  @new = Product.new()
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
       @product.patients << Patient.where(id: params[:product][:patient_ids])
    redirect_to product_path(@product.id)
  else
    render 'new'
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
def search
    @product = Product.where("title LIKE ?", "%#{params[:q]}%")
  end
def destroy
  @product = Product.find(params[:id])
  @product.destroy

  redirect_to products_path
end
   private
   def product_params
    params.require(:product).permit(:first_name, :last_name,  :gender, :address, :peraddress, :contactNo,patients_ids: [])
  end
end
