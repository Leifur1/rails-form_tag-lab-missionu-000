class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    Student.create(session[:form_params])
    redirect_to students_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

end
