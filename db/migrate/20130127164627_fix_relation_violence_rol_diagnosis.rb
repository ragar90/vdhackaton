class FixRelationViolenceRolDiagnosis < ActiveRecord::Migration
  
  def up
  	remove_column :violence_rols, :victim_diagnosis_id
  	add_column :victim_diagnoses, :violence_rol_id, :integer
  end

  def down
  	add_column :violence_rols, :victim_diagnosis_id, :integer
  	remove_column :victim_diagnoses, :violence_rol_id
  end

end
