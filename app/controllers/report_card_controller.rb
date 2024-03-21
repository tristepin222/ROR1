class ReportCardController < ApplicationController
  before_action :set_classroom, only: %i[ show edit update destroy ]
  before_action :authorize_access, only: [:new, :create, :destroy, :update, :index]
  def generate
    @person_have_exams = PersonHaveExam.all
  end
end
