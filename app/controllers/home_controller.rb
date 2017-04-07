class HomeController < ApplicationController
  def index
    @students = Student.all
  end
  
  def upload
    student = Student.new
    student.name = params[:student_name]
    student.student_number = params[:student_number]
    student.save
    
    redirect_to '/home/index'
  end
end
