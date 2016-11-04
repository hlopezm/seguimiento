class CreateJoinTableTourCity < ActiveRecord::Migration[5.0]
  def change
    create_join_table :tours, :cities do |t|
      t.index [:tour_id, :city_id]
      t.index [:city_id, :tour_id]
    end
  end
end
