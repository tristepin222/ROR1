class SemesterHasExamsController < ApplicationController
  before_action :set_semester_has_exam, only: %i[ show edit update destroy ]

  # GET /semester_has_exams or /semester_has_exams.json
  def index
    @semester_has_exams = SemesterHasExam.all
  end

  # GET /semester_has_exams/1 or /semester_has_exams/1.json
  def show
  end

  # GET /semester_has_exams/new
  def new
    @semester_has_exam = SemesterHasExam.new
  end

  # GET /semester_has_exams/1/edit
  def edit
  end

  # POST /semester_has_exams or /semester_has_exams.json
  def create
    @semester_has_exam = SemesterHasExam.new(semester_has_exam_params)

    respond_to do |format|
      if @semester_has_exam.save
        format.html { redirect_to semester_has_exam_url(@semester_has_exam), notice: "Semester has exam was successfully created." }
        format.json { render :show, status: :created, location: @semester_has_exam }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @semester_has_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /semester_has_exams/1 or /semester_has_exams/1.json
  def update
    respond_to do |format|
      if @semester_has_exam.update(semester_has_exam_params)
        format.html { redirect_to semester_has_exam_url(@semester_has_exam), notice: "Semester has exam was successfully updated." }
        format.json { render :show, status: :ok, location: @semester_has_exam }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @semester_has_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /semester_has_exams/1 or /semester_has_exams/1.json
  def destroy
    @semester_has_exam.destroy!

    respond_to do |format|
      format.html { redirect_to semester_has_exams_url, notice: "Semester has exam was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semester_has_exam
      @semester_has_exam = SemesterHasExam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def semester_has_exam_params
      params.require(:semester_has_exam).permit(:semester_id, :exam_id)
    end
end
