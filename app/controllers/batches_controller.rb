class BatchesController < ApplicationController
  
  before_action :authenticate_teacher!, only: [:create, :destroy]
  before_action :set_batch, only: [:destroy]
  before_action :authorize_teacher, only: [:destroy]


  def home
  	@batch = Batch.new
    @batches = Batch.all
    @new_student = Student.new
    @classday = Classday.new
    @attendance = Attendance.new
  end

  def create	
  	@batch = Batch.create(name: params[:batch][:name], teacher_id:current_teacher.id)

  	redirect_to root_path
  end

  def destroy
  	@x.destroy
  	redirect_to root_path
  end

     private

   def set_batch
   	@x = Batch.find(params[:id])
   end

   def authorize_teacher
   	if current_teacher.id != @x.teacher_id
   		redirect_to action: 'home'
   	end
  	
   end


end
