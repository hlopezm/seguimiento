class AddPartyToResults < ActiveRecord::Migration[5.0]
  def change
    party = Party.create! nombre: "Sin Asignar"
    add_reference :results, :party, index: true, default: party.id
    add_foreign_key :results, :parties
  end
end
