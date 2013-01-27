class CreateVictimDiagnosisPsychophysiologicalAlterations < ActiveRecord::Migration
  def change
    create_table :victim_diagnosis_psychophysiological_alterations do |t|
      t.references :psychophysiological_alteration
      t.references :victim_diagnosis

      t.timestamps
    end
    add_index :victim_diagnosis_psychophysiological_alterations, :psychophysiological_alteration_id, :name => :vdpa_pa_id
    add_index :victim_diagnosis_psychophysiological_alterations, :victim_diagnosis_id, :name => :vd_id
  end
end
