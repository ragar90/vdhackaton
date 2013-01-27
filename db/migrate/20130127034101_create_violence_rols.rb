class CreateViolenceRols < ActiveRecord::Migration
  def change
    create_table :violence_rols do |t|
      t.references :person
      t.references :system_case
      t.boolean :rol_kind, :default => false
      t.references :profile_aggressor
      t.references :victim_diagnosis

      t.timestamps
    end
    add_index :violence_rols, :person_id
    add_index :violence_rols, :case_id
    add_index :violence_rols, :profile_aggressor_id
    add_index :violence_rols, :victim_diagnosis_id
  end
end
