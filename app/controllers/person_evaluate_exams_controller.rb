class PersonEvaluateExamsController < ApplicationController
  before_action :set_person_evaluate_exam, only: %i[ show edit update destroy ]
  before_action :authorize_teacher, only: [:new, :create, :destroy, :update, :index]
  # GET /person_evaluate_exams or /person_evaluate_exams.json
  def index
    @person_evaluate_exams = PersonEvaluateExam.all
  end

  # GET /person_evaluate_exams/1 or /person_evaluate_exams/1.json
  def show
  end

  # GET /person_evaluate_exams/new
  def new
    @person_evaluate_exam = PersonEvaluateExam.new
  end

  # GET /person_evaluate_exams/1/edit
  def edit
  end

  # POST /person_evaluate_exams or /person_evaluate_exams.json
  def create
    @person_evaluate_exam = PersonEvaluateExam.new(person_evaluate_exam_params)

    respond_to do |format|
      if @person_evaluate_exam.save
        format.html { redirect_to person_evaluate_exam_url(@person_evaluate_exam), notice: "Person evaluate exam was successfully created." }
        format.json { render :show, status: :created, location: @person_evaluate_exam }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person_evaluate_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_evaluate_exams/1 or /person_evaluate_exams/1.json
  def update
    respond_to do |format|
      if @person_evaluate_exam.update(person_evaluate_exam_params)
        format.html { redirect_to person_evaluate_exam_url(@person_evaluate_exam), notice: "Person evaluate exam was successfully updated." }
        format.json { render :show, status: :ok, location: @person_evaluate_exam }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person_evaluate_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_evaluate_exams/1 or /person_evaluate_exams/1.json
  def destroy
    @person_evaluate_exam.destroy!

    respond_to do |format|
      format.html { redirect_to person_evaluate_exams_url, notice: "Person evaluate exam was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_evaluate_exam
      @person_evaluate_exam = PersonEvaluateExam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_evaluate_exam_params
      params.require(:person_evaluate_exam).permit(:exam_date, :person_id, :exam_id)
    end
end
