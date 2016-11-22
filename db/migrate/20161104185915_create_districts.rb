class CreateDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :districts do |t|
      t.string :nombre
      t.string :diputado
      t.string :image
      t.integer :prioridad
      t.text :observaciones
      t.string :type
      t.references :districtable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
