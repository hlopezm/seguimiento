class CreateParties < ActiveRecord::Migration[5.0]
  def change
    create_table :parties do |t|
      t.string :nombre
      t.string :image

      t.timestamps
    end
  end
end
