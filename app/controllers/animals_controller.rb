class AnimalsController < ApplicationController
  # def index
  def index
  if params[:search].present?
    @animals = Animal.where("Role LIKE ?", "%#{params[:search]}%")
  else
    @animals = Animal.all
  end
end

    # if params[:role].present?
    #     @animals = Animal.includes(:animals).where(animal: { role: params[:role] })
    #   else
      #   @animals = Animal.all
      # end


    #   @animals = Animal.all
    # end

  # end
  def testshow
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
end
def new_animal
  @animal=Animal.new
end
def testupdate
  @animal = Animal.find(params[:id])

  if @animal.testupdate(animal_params)
    redirect_to @animal
  else
    render 'testedit'
  end
end
  def testedit
    @animal = Animal.find(params[:id])
end
  def create_animal
    @animal = Animal.new(params.require(:animal).permit(:name, :email, :contact, :gender, :Role))

  if @animal.save
  redirect_to @animal
else
  render 'testfor'
end
end
def search
    @animals = Animal.where("title LIKE ?", "%#{params[:q]}%")
  end

def testdestroy
  @animal = Animal.find(params[:id])
  @animal.testdestroy

  redirect_to animals_path
end
  private
  def animal_params
    params.require(:animal).permit(:name, :email, :contact, :gender, :Role)
  end
end
