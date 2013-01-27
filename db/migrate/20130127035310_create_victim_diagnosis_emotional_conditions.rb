class CreateVictimDiagnosisEmotionalConditions < ActiveRecord::Migration
  def change
    create_table :victim_diagnosis_emotional_conditions do |t|
      t.references :victim_diagnosis
      t.references :emotional_condition

      t.timestamps
    end
    add_index :victim_diagnosis_emotional_conditions, :victim_diagnosis_id, :name => :vdec_vd_id
    add_index :victim_diagnosis_emotional_conditions, :emotional_condition_id, :name => :vdec_ec_id
  end
end
