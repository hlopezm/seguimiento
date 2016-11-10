class CreateJoinTableCityFederal < ActiveRecord::Migration[5.0]
  def change
    create_join_table :cities, :federals do |t|
      t.index [:city_id, :federal_id]
      t.index [:federal_id, :city_id]
    end
  end
end
