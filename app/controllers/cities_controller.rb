class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.all
  end

  def show
    #code
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:nombre, :presidente_mpal, :fecha, :prioridad, :observaciones, :image, :report_id, :local_id, :federal_id)
    end

end
