class PersonLearnSubjectsController < ApplicationController
  before_action :set_person_learn_subject, only: %i[ show edit update destroy ]
  before_action :authorize_teacher, only: [:new, :create, :destroy, :update, :index]
  # GET /person_learn_subjects or /person_learn_subjects.json
  def index
    @person_learn_subjects = PersonLearnSubject.all
  end

  # GET /person_learn_subjects/1 or /person_learn_subjects/1.json
  def show
  end

  # GET /person_learn_subjects/new
  def new
    @person_learn_subject = PersonLearnSubject.new
  end

  # GET /person_learn_subjects/1/edit
  def edit
  end

  # POST /person_learn_subjects or /person_learn_subjects.json
  def create
    @person_learn_subject = PersonLearnSubject.new(person_learn_subject_params)

    respond_to do |format|
      if @person_learn_subject.save
        format.html { redirect_to person_learn_subject_url(@person_learn_subject), notice: "Person learn subject was successfully created." }
        format.json { render :show, status: :created, location: @person_learn_subject }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person_learn_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_learn_subjects/1 or /person_learn_subjects/1.json
  def update
    respond_to do |format|
      if @person_learn_subject.update(person_learn_subject_params)
        format.html { redirect_to person_learn_subject_url(@person_learn_subject), notice: "Person learn subject was successfully updated." }
        format.json { render :show, status: :ok, location: @person_learn_subject }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person_learn_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_learn_subjects/1 or /person_learn_subjects/1.json
  def destroy
    @person_learn_subject.destroy!

    respond_to do |format|
      format.html { redirect_to person_learn_subjects_url, notice: "Person learn subject was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_learn_subject
      @person_learn_subject = PersonLearnSubject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_learn_subject_params
      params.require(:person_learn_subject).permit(:learn_date, :person_id, :subject_id)
    end
end
