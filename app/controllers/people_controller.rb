class PeopleController < ApplicationController
  before_action :authenticate_person!, :set_person, only: %i[ show edit update destroy ]
  before_action :authorize_dean_or_teacher, only: [:new, :create, :destroy, :update, :index]
  before_action :authorize_on_edit, only: [:edit]
  # GET /people or /people.json
  def index
    @people = Person.all
  end

  # GET /people/1 or /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
    @person.build_locality # build if belongs_to
    @person.classrooms.build #build if has_many
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people or /people.json
  def create
    if person_params["is_teacher"] == 0
      @person = Student.new(person_params)
    else
      @person = Teacher.new(person_params)
    end

    puts @person
    respond_to do |format|
      if @person.save
        format.html { redirect_to person_url(@person), notice: "Person was successfully created." }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1 or /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to person_url(@person), notice: "Person was successfully updated." }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1 or /people/1.json
  def destroy
    @person.destroy!

    respond_to do |format|
      format.html { redirect_to people_url, notice: "Person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def authorize_on_edit
    if @person != current_person && current_person.student?
      route_back
    end
  end

  # PATCH/PUT /people/1 or /people/1.json
  def promote
    @student = Student.find(params[:student_id])
    @person_belongs_to_classroom = PersonBelongsToClassroom.new(person: @student, classroom: @student.classrooms.first, start_date: Date.today, end_date: Date.today.year+1 )
    @person_belongs_to_classroom.save

    redirect_back fallback_location: root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_params

      if params.has_key? :teacher
        params[:person] = params.delete :teacher
      elsif params.has_key? :dean
        params[:person] = params.delete :dean
      elsif params.has_key? :student
        params[:person] = params.delete :student
      end

      params.require(:person).permit(:gender, :first_name, :last_name, :birth_date, :address, :phone_number, :email, :is_teacher, :password, :password_confirmation, locality_attributes: [:name], classrooms_attributes: [:name])
    end
end
