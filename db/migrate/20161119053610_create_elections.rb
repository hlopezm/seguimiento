class CreateElections < ActiveRecord::Migration[5.0]
  def change
    create_table :elections do |t|
      t.string :nombre
      t.integer :year

      t.timestamps
    end
  end
end
