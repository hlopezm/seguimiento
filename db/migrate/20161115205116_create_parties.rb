class CreateParties < ActiveRecord::Migration[5.0]
  def change
    create_table :parties do |t|
      t.string :nombre
      t.string :nombre_corto
      t.string :image
      t.references :partyable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
