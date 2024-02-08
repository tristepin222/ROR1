class PersonTeachSubjectsController < ApplicationController
  before_action :set_person_teach_subject, only: %i[ show edit update destroy ]

  # GET /person_teach_subjects or /person_teach_subjects.json
  def index
    @person_teach_subjects = PersonTeachSubject.all
  end

  # GET /person_teach_subjects/1 or /person_teach_subjects/1.json
  def show
  end

  # GET /person_teach_subjects/new
  def new
    @person_teach_subject = PersonTeachSubject.new
  end

  # GET /person_teach_subjects/1/edit
  def edit
  end

  # POST /person_teach_subjects or /person_teach_subjects.json
  def create
    @person_teach_subject = PersonTeachSubject.new(person_teach_subject_params)

    respond_to do |format|
      if @person_teach_subject.save
        format.html { redirect_to person_teach_subject_url(@person_teach_subject), notice: "Person teach subject was successfully created." }
        format.json { render :show, status: :created, location: @person_teach_subject }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person_teach_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_teach_subjects/1 or /person_teach_subjects/1.json
  def update
    respond_to do |format|
      if @person_teach_subject.update(person_teach_subject_params)
        format.html { redirect_to person_teach_subject_url(@person_teach_subject), notice: "Person teach subject was successfully updated." }
        format.json { render :show, status: :ok, location: @person_teach_subject }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person_teach_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_teach_subjects/1 or /person_teach_subjects/1.json
  def destroy
    @person_teach_subject.destroy!

    respond_to do |format|
      format.html { redirect_to person_teach_subjects_url, notice: "Person teach subject was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_teach_subject
      @person_teach_subject = PersonTeachSubject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_teach_subject_params
      params.require(:person_teach_subject).permit(:teach_date, :person_id, :subject_id)
    end
end
