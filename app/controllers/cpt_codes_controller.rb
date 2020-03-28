class CptCodesController < ApplicationController
  before_action :set_cpt_code, only: [:show, :update, :destroy]

  # GET /cpt_codes
  def index
    @cpt_codes = CptCode.all

    render json: @cpt_codes
  end

  # GET /cpt_codes/1
  def show
    render json: @cpt_code
  end

  # POST /cpt_codes
  def create
    @cpt_code = CptCode.new(cpt_code_params)

    if @cpt_code.save
      render json: @cpt_code, status: :created, location: @cpt_code
    else
      render json: @cpt_code.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cpt_codes/1
  def update
    if @cpt_code.update(cpt_code_params)
      render json: @cpt_code
    else
      render json: @cpt_code.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cpt_codes/1
  def destroy
    @cpt_code.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpt_code
      @cpt_code = CptCode.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cpt_code_params
      params.require(:cpt_code).permit(:description, :duration, :rate, :call_to_book, :clinician_id)
    end
end
