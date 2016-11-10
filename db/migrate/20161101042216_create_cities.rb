class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :nombre
      t.string :presidente_mpal
      t.text :observaciones
      t.integer :prioridad
      t.string :image
      t.timestamps
    end
  end
end
