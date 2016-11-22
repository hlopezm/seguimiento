class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :nombre
      t.datetime :fecha
      t.string :direccion
      t.text :descripcion
      t.string :image
      t.references :reportable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
