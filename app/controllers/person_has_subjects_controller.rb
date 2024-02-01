class PersonHasSubjectsController < ApplicationController
  before_action :set_person_has_subject, only: %i[ show edit update destroy ]

  # GET /person_has_subjects or /person_has_subjects.json
  def index
    @person_has_subjects = PersonHasSubject.all
  end

  # GET /person_has_subjects/1 or /person_has_subjects/1.json
  def show
  end

  # GET /person_has_subjects/new
  def new
    @person_has_subject = PersonHasSubject.new
  end

  # GET /person_has_subjects/1/edit
  def edit
  end

  # POST /person_has_subjects or /person_has_subjects.json
  def create
    @person_has_subject = PersonHasSubject.new(person_has_subject_params)

    respond_to do |format|
      if @person_has_subject.save
        format.html { redirect_to person_has_subject_url(@person_has_subject), notice: "Person has subject was successfully created." }
        format.json { render :show, status: :created, location: @person_has_subject }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person_has_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_has_subjects/1 or /person_has_subjects/1.json
  def update
    respond_to do |format|
      if @person_has_subject.update(person_has_subject_params)
        format.html { redirect_to person_has_subject_url(@person_has_subject), notice: "Person has subject was successfully updated." }
        format.json { render :show, status: :ok, location: @person_has_subject }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person_has_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_has_subjects/1 or /person_has_subjects/1.json
  def destroy
    @person_has_subject.destroy!

    respond_to do |format|
      format.html { redirect_to person_has_subjects_url, notice: "Person has subject was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_has_subject
      @person_has_subject = PersonHasSubject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_has_subject_params
      params.require(:person_has_subject).permit(:person_id, :subject_id, :current_class)
    end
end
