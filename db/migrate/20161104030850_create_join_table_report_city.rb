class CreateJoinTableReportCity < ActiveRecord::Migration[5.0]
  def change
    create_join_table :reports, :cities do |t|
      t.index [:report_id, :city_id]
      t.index [:city_id, :report_id]
    end
  end
end
