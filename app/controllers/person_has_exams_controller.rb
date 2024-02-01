class PersonHasExamsController < ApplicationController
  before_action :set_person_has_exam, only: %i[ show edit update destroy ]

  # GET /person_has_exams or /person_has_exams.json
  def index
    @person_has_exams = PersonHasExam.all
  end

  # GET /person_has_exams/1 or /person_has_exams/1.json
  def show
  end

  # GET /person_has_exams/new
  def new
    @person_has_exam = PersonHasExam.new
  end

  # GET /person_has_exams/1/edit
  def edit
  end

  # POST /person_has_exams or /person_has_exams.json
  def create
    @person_has_exam = PersonHasExam.new(person_has_exam_params)

    respond_to do |format|
      if @person_has_exam.save
        format.html { redirect_to person_has_exam_url(@person_has_exam), notice: "Person has exam was successfully created." }
        format.json { render :show, status: :created, location: @person_has_exam }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person_has_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_has_exams/1 or /person_has_exams/1.json
  def update
    respond_to do |format|
      if @person_has_exam.update(person_has_exam_params)
        format.html { redirect_to person_has_exam_url(@person_has_exam), notice: "Person has exam was successfully updated." }
        format.json { render :show, status: :ok, location: @person_has_exam }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person_has_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_has_exams/1 or /person_has_exams/1.json
  def destroy
    @person_has_exam.destroy!

    respond_to do |format|
      format.html { redirect_to person_has_exams_url, notice: "Person has exam was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_has_exam
      @person_has_exam = PersonHasExam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_has_exam_params
      params.require(:person_has_exam).permit(:person_id, :exam_id, :grade)
    end
end
