class ClassdaysController < ApplicationController
  
  def create
  	@classday = Classday.create(date: params[:classday][:date], batch_id: params[:classday][:batch_id])
  	redirect_to root_path
  end

  def destroy
  	Classday.find_by(params[:id]).destroy
  	redirect_to root_path
  end
  
end
