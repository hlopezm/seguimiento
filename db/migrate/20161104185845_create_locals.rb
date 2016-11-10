class CreateLocals < ActiveRecord::Migration[5.0]
  def change
    create_table :locals do |t|
      t.string :nombre
      t.string :diputado
      t.string :image
      t.integer :prioridad
      t.text :observaciones

      t.timestamps
    end
  end
end
