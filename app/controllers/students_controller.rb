class StudentsController < ApplicationController
  
  before_action :authenticate_teacher!, only: [:create, :destroy]
  before_action :set_student, only: [:destroy]
  before_action :authorize_teacher, only: [:destroy]

  def create
  	@new_student = Student.create(name: params[:student][:name], teacher_id: current_teacher.id, batch_id: params[:student][:batch_id])
  	redirect_to root_path
  end

  def destroy
  	@x.destroy
  	redirect_to root_path
  end

  private

  def set_student
  	@x = Student.find(params[:id])  	
  end

  def authorize_teacher
  	if current_teacher.id != @x.teacher_id
  	   redirect_to root_path
    end
   end

end
