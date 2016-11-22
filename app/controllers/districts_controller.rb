class DistrictsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_district, only: [:show, :edit, :update, :destroy]

  def index
    @districts = District.all
  end

  def show
    #code
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_district
      @district = District.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def district_params
      params.require(:district).permit(:nombre, :diputado, :prioridad, :observaciones, :image, :city_id, :election_id, :result_id, :report_id)
    end
end
