class AddResultToElections < ActiveRecord::Migration
  def change
    result = Result.create! nombre: "N/A"
    add_reference :elections, :result, index: true, default: result.id
    add_foreign_key :elections, :results
  end
end
