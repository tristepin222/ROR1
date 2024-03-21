class ReportCardController < ApplicationController
  before_action :authorize_access, only: [:generate]
  def generate
    @person_have_exams = PersonHaveExam.all
  end
end
