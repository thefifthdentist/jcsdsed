class TeachersCohortsController < ApplicationController
  before_action :set_teachers_cohort, only: [:show, :edit, :update, :destroy]

  # GET /teachers_cohorts
  # GET /teachers_cohorts.json
  def index
    @teachers_cohorts = TeachersCohort.all
  end

  # GET /teachers_cohorts/1
  # GET /teachers_cohorts/1.json
  def show
  end

  # GET /teachers_cohorts/new
  def new
    @teachers_cohort = TeachersCohort.new
  end

  # GET /teachers_cohorts/1/edit
  def edit
  end

  # POST /teachers_cohorts
  # POST /teachers_cohorts.json
  def create
    @teachers_cohort = TeachersCohort.new(teachers_cohort_params)

    respond_to do |format|
      if @teachers_cohort.save
        format.html { redirect_to @teachers_cohort, notice: 'Teachers cohort was successfully created.' }
        format.json { render :show, status: :created, location: @teachers_cohort }
      else
        format.html { render :new }
        format.json { render json: @teachers_cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teachers_cohorts/1
  # PATCH/PUT /teachers_cohorts/1.json
  def update
    respond_to do |format|
      if @teachers_cohort.update(teachers_cohort_params)
        format.html { redirect_to @teachers_cohort, notice: 'Teachers cohort was successfully updated.' }
        format.json { render :show, status: :ok, location: @teachers_cohort }
      else
        format.html { render :edit }
        format.json { render json: @teachers_cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers_cohorts/1
  # DELETE /teachers_cohorts/1.json
  def destroy
    @teachers_cohort.destroy
    respond_to do |format|
      format.html { redirect_to teachers_cohorts_url, notice: 'Teachers cohort was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teachers_cohort
      @teachers_cohort = TeachersCohort.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teachers_cohort_params
      params.require(:teachers_cohort).permit(:Teacher_ID, :Student_ID)
    end
end
