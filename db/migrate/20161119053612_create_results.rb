class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.string :name
      t.decimal :votes

      t.timestamps
    end
  end
end
