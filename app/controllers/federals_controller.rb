class FederalsController < ApplicationController
  before_action :set_federal, only: [:show, :edit, :update, :destroy]

  def index
    @federals = Federal.all
  end

  def show
    #code
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_federal
      @federal = Federal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def federal_params
      params.require(:federal).permit(:nombre, :diputado, :prioridad, :observaciones, :image, :city_id, :report_id)
    end
end
