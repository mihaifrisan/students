class StudentsController < ApplicationController

  def index
    @students_courses = StudentsCourse.all
  end


  def destroy
    @studentc = StudentsCourse.find(params[:id])
    @studentc.destroy
    redirect_to student_courses_path
  end

end
