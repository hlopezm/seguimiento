class ElectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_election, only: [:show, :edit, :update, :destroy]

  def index
    @elections = Election.all
  end

  def show
    #code
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_election
      @election = Election.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def election_params
      params.require(:election).permit(:nombre, :result_id, :party_id, :city_id, :district_id)
    end

end
