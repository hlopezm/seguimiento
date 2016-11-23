class AddYearToElections < ActiveRecord::Migration[5.0]
  def change
    year = Year.create! nombre: "Sin Asignar"
    add_reference :elections, :year, foreign_key: true, default: year.id
    end
end
