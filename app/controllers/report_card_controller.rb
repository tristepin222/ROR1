class ReportCardController < ApplicationController
  def generate
    @person_have_exams = PersonHaveExam.all
  end
end
