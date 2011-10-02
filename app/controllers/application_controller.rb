class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_student!
  before_filter :initialize_subjects
  
  def initialize_subjects
    if student_signed_in?
      @subjects = current_student.subjects
    end
  end
end
