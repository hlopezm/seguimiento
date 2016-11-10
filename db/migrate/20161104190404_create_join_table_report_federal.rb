class CreateJoinTableReportFederal < ActiveRecord::Migration[5.0]
  def change
    create_join_table :reports, :federals do |t|
      t.index [:report_id, :federal_id]
      t.index [:federal_id, :federal_id]
    end
  end
end
