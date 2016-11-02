class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.datetime :date
      t.string :address
      t.text :description
      t.string :image
      t.timestamps
    end
  end
end
