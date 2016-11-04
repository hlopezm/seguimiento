class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.text :observations
      t.boolean :priority
      t.string :image
      t.belongs_to :tour, index: true
      t.timestamps
    end
  end
end
