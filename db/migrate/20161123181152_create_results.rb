class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.integer :votos
      t.references :election, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
