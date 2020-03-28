class CliniciansController < ApplicationController
  before_action :set_clinician, only: [:show, :update, :destroy]

  # GET /clinicians
  def index
    @clinicians = Clinician.all

    render json: @clinicians
  end

  # GET /clinicians/1
  def show
    render json: @clinician
  end

  # POST /clinicians
  def create
    @clinician = Clinician.new(clinician_params)

    if @clinician.save
      render json: @clinician, status: :created, location: @clinician
    else
      render json: @clinician.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clinicians/1
  def update
    if @clinician.update(clinician_params)
      render json: @clinician
    else
      render json: @clinician.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clinicians/1
  def destroy
    @clinician.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinician
      @clinician = Clinician.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clinician_params
      params.require(:clinician).permit(:first_name, :last_name, :middle_name, :Suffix, :phone)
    end
end
