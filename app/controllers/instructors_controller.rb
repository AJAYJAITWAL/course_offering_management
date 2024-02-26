class InstructorsController < ApplicationController
  def my_courses
    @my_courses = current_user.instructor_courses
  end
end
