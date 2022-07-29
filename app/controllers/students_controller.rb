class StudentsController < ApplicationController

  def index
    students = Student.all
    
    

    if params.keys.length > 2
      name = Student.all.find_all {|s| s.last_name.downcase == params[:name].downcase || s.first_name.downcase == params[:name].downcase}
      render json: name
    else
      render json: students
    end
  
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end 

  def query
    byebug
  end 
end
