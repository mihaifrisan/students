class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.new(student_params)
    student.save
    redirect_to students_path
  end

  private

    def student_params
      params.required(:student).permit(:email,
        :first_name,
        :last_name
      )

    end

end
