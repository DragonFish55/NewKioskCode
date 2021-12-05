class IncaseEmergesController < ApplicationController
  before_action :set_incase_emerge, only: %i[ show edit update destroy ]

  # GET /incase_emerges or /incase_emerges.json
  def index
    @incase_emerges = IncaseEmerge.all
  end

  # GET /incase_emerges/1 or /incase_emerges/1.json
  def show
  end

  # GET /incase_emerges/new
  def new
    @incase_emerge = IncaseEmerge.new
  end

  # GET /incase_emerges/1/edit
  def edit
  end

  # POST /incase_emerges or /incase_emerges.json
  def create
    @incase_emerge = IncaseEmerge.new(incase_emerge_params)

    respond_to do |format|
      if @incase_emerge.save
        format.html { redirect_to @incase_emerge, notice: "Incase emerge was successfully created." }
        format.json { render :show, status: :created, location: @incase_emerge }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @incase_emerge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incase_emerges/1 or /incase_emerges/1.json
  def update
    respond_to do |format|
      if @incase_emerge.update(incase_emerge_params)
        format.html { redirect_to @incase_emerge, notice: "Incase emerge was successfully updated." }
        format.json { render :show, status: :ok, location: @incase_emerge }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @incase_emerge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incase_emerges/1 or /incase_emerges/1.json
  def destroy
    @incase_emerge.destroy
    respond_to do |format|
      format.html { redirect_to incase_emerges_url, notice: "Incase emerge was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incase_emerge
      @incase_emerge = IncaseEmerge.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incase_emerge_params
      params.require(:incase_emerge).permit(:user_id)
    end
end
