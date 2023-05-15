class TeachersController < ApplicationController

  def index
@teachers = Teacher.all
@f_roles = Student.pluck(:f_role).uniq
@selected_role = params[:f_role]

if @selected_role.present?
  @teachers = Teacher.includes(:students).where(students: { f_role: @selected_role })
end
end

#     @teachers = Teacher.all
#     if @f_roles = Student.pluck(:f_role).uniq
#       @teachers = params[:f_role]
#       @teachers = Teacher.includes(:students).where(students: { f_role: @teachers })
#     else
#       @teachers=Teacher.all
#     end
#
#
# end



# @teachers = Teacher.all
#         if params[:search]
#      @teachers = Teacher.joins(:students).where('students.f_role LIKE ?', "%#{params[:search]}%")
#    else
#      @teachers = Teacher.all
#    end
#  end


  def delete_teachers
      Teacher.includes(:students).where(id: params[:teacher_ids]).destroy_all
      redirect_to teachers_path, notice: 'Selected users and their posts were successfully deleted.'
    end





  def show
   @teacher = Teacher.find(params[:id])
 end
  def new
    @teacher = Teacher.new()
    @students = Student.all
  end
  def edit
  @teacher = Teacher.find(params[:id])
    @students = Student.all
end
  def create
    @teacher = Teacher.new(teacher_params)
 if @teacher.save
 redirect_to (@teacher)
else
  render 'new'
  end
end
def update
  @teacher = Teacher.find(params[:id])

  if @teacher.update(teacher_params)
    redirect_to @teacher
  else
    render 'edit'
  end
end
def search
    @teacher = Teacher.where("title LIKE ?", "%#{params[:f_role]}%")
  end
def destroy
  @teacher = Teacher.find(params[:id])
  @teacher.destroy

  redirect_to teachers_path
end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :email, :contact, :address, student_ids:[] )
  end

end
