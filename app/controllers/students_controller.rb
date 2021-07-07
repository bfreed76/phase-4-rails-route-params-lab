
 class StudentsController < ApplicationController
  def index
    # byebug
    p("****")
    p(params)
    students = Student.find_by(first_name: params[:first_name], last_name: params[:last_name], grade: params[:grade])
    render json: students
  end

  def show
    students = Student.find(params[:id])
    render json: students
  end

end
