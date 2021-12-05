class DemographicsController < ApplicationController
  before_action :set_demographic, only: %i[ show edit update destroy ]

  # GET /demographics or /demographics.json
  def index
    @demographics = Demographic.all
  end

  # GET /demographics/1 or /demographics/1.json
  def show
  end

  # GET /demographics/new
  def new
    @demographic = Demographic.new
  end

  # GET /demographics/1/edit
  def edit
  end

  # POST /demographics or /demographics.json
  def create
    @demographic = Demographic.new(demographic_params)

    respond_to do |format|
      if @demographic.save
        format.html { redirect_to @demographic, notice: "Demographic was successfully created." }
        format.json { render :show, status: :created, location: @demographic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @demographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demographics/1 or /demographics/1.json
  def update
    respond_to do |format|
      if @demographic.update(demographic_params)
        format.html { redirect_to @demographic, notice: "Demographic was successfully updated." }
        format.json { render :show, status: :ok, location: @demographic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @demographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demographics/1 or /demographics/1.json
  def destroy
    @demographic.destroy
    respond_to do |format|
      format.html { redirect_to demographics_url, notice: "Demographic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demographic
      @demographic = Demographic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def demographic_params
      params.require(:demographic).permit(:user_id)
    end
end
