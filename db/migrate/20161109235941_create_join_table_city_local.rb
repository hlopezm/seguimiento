class CreateJoinTableCityLocal < ActiveRecord::Migration[5.0]
  def change
    create_join_table :cities, :locals do |t|
      t.index [:city_id, :local_id]
      t.index [:local_id, :city_id]
    end
  end
end
