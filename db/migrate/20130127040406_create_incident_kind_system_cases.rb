class CreateIncidentKindSystemCases < ActiveRecord::Migration
  def change
    create_table :incident_kind_system_cases do |t|
      t.references :incident_kind
      t.references :system_case

      t.timestamps
    end
    add_index :incident_kind_system_cases, :incident_kind_id
    add_index :incident_kind_system_cases, :system_case_id
  end
end
