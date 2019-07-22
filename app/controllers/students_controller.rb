class StudentsController < ApplicationController
  # before_action :set_student, only: :show
  
  def index
    @students = Student.all
    # render 'index.html'
  end

  def show
    @student = Student.find(params[:id])
    # render 'show.html'
  end

  def new
    @student = Student.new
  end

  def activate
    @student = Student.find(params[:id])
    @student.toggle! (:active)
    redirect_to "/students/#{@student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
      # render 'show.html'
    end
end