class PersonHaveExamsController < ApplicationController
  before_action :set_person_have_exam, only: %i[ show edit update destroy ]

  # GET /person_have_exams or /person_have_exams.json
  def index
    @person_have_exams = PersonHaveExam.all
  end

  # GET /person_have_exams/1 or /person_have_exams/1.json
  def show
  end

  # GET /person_have_exams/new
  def new
    @person_have_exam = PersonHaveExam.new
  end

  # GET /person_have_exams/1/edit
  def edit
  end

  # POST /person_have_exams or /person_have_exams.json
  def create
    @person_have_exam = PersonHaveExam.new(person_have_exam_params)

    respond_to do |format|
      if @person_have_exam.save
        format.html { redirect_to person_have_exam_url(@person_have_exam), notice: "Person have exam was successfully created." }
        format.json { render :show, status: :created, location: @person_have_exam }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person_have_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_have_exams/1 or /person_have_exams/1.json
  def update
    respond_to do |format|
      if @person_have_exam.update(person_have_exam_params)
        format.html { redirect_to person_have_exam_url(@person_have_exam), notice: "Person have exam was successfully updated." }
        format.json { render :show, status: :ok, location: @person_have_exam }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person_have_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_have_exams/1 or /person_have_exams/1.json
  def destroy
    @person_have_exam.destroy!

    respond_to do |format|
      format.html { redirect_to person_have_exams_url, notice: "Person have exam was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_have_exam
      @person_have_exam = PersonHaveExam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_have_exam_params
      params.require(:person_have_exam).permit(:grade, :person_id, :exam_id)
    end
end
