class AddElectionToReports < ActiveRecord::Migration
  def change
    election = Election.create! nombre: "N/A"
    add_reference :reports, :election, index: true, default: election.id
    add_foreign_key :reports, :elections
  end
end
