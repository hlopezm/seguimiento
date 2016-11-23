class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :nombre
      t.string :pdte_mpal
      t.string :partido_pdte
      t.text :observaciones
      t.boolean :prioridad
      t.string :image
      t.timestamps
    end

  end
end
