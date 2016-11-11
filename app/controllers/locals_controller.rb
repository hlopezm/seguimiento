class LocalsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_local, only: [:show, :edit, :update, :destroy]

  def index
    @locals = Local.all
  end

  def show
    #code
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local
      @local = Local.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def local_params
      params.require(:local).permit(:nombre, :diputado, :prioridad, :observaciones, :image, :city_id, :report_id)
    end
end
