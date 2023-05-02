class PatientsController < ApplicationController

http_basic_authenticate_with name: "Chandra", password: "secret", only: :destroy


  def create
    @product = Product.find(params[:product_id])
    @patient = @product.patients.create(patient_params)
    redirect_to product_path(@product)
  end

  def edit
    @product=Product.find(params[:id])
    @patient=@product.patients.find(params[:id])

  end

  def destroy
    @product = Product.find(params[:product_id])
    @patient = @product.patients.find(params[:id])
    @patient.destroy
    redirect_to product_path(@product)
  end

  private
    def patient_params
      params.require(:patient).permit(:role, :description)
    end
end
