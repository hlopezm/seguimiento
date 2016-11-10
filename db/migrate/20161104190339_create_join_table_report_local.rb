class CreateJoinTableReportLocal < ActiveRecord::Migration[5.0]
  def change
    create_join_table :reports, :locals do |t|
      t.index [:report_id, :local_id]
      t.index [:local_id, :report_id]
    end
  end
end
