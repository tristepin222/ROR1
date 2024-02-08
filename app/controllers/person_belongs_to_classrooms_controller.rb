class PersonBelongsToClassroomsController < ApplicationController
  before_action :set_person_belongs_to_classroom, only: %i[ show edit update destroy ]

  # GET /person_belongs_to_classrooms or /person_belongs_to_classrooms.json
  def index
    @person_belongs_to_classrooms = PersonBelongsToClassroom.all
  end

  # GET /person_belongs_to_classrooms/1 or /person_belongs_to_classrooms/1.json
  def show
  end

  # GET /person_belongs_to_classrooms/new
  def new
    @person_belongs_to_classroom = PersonBelongsToClassroom.new
  end

  # GET /person_belongs_to_classrooms/1/edit
  def edit
  end

  # POST /person_belongs_to_classrooms or /person_belongs_to_classrooms.json
  def create
    @person_belongs_to_classroom = PersonBelongsToClassroom.new(person_belongs_to_classroom_params)

    respond_to do |format|
      if @person_belongs_to_classroom.save
        format.html { redirect_to person_belongs_to_classroom_url(@person_belongs_to_classroom), notice: "Person belongs to classroom was successfully created." }
        format.json { render :show, status: :created, location: @person_belongs_to_classroom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person_belongs_to_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_belongs_to_classrooms/1 or /person_belongs_to_classrooms/1.json
  def update
    respond_to do |format|
      if @person_belongs_to_classroom.update(person_belongs_to_classroom_params)
        format.html { redirect_to person_belongs_to_classroom_url(@person_belongs_to_classroom), notice: "Person belongs to classroom was successfully updated." }
        format.json { render :show, status: :ok, location: @person_belongs_to_classroom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person_belongs_to_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_belongs_to_classrooms/1 or /person_belongs_to_classrooms/1.json
  def destroy
    @person_belongs_to_classroom.destroy!

    respond_to do |format|
      format.html { redirect_to person_belongs_to_classrooms_url, notice: "Person belongs to classroom was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_belongs_to_classroom
      @person_belongs_to_classroom = PersonBelongsToClassroom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_belongs_to_classroom_params
      params.require(:person_belongs_to_classroom).permit(:start_date, :end_date, :person_id, :classroom_id)
    end
end
