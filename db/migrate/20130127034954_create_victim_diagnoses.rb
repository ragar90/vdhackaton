class CreateVictimDiagnoses < ActiveRecord::Migration
  def change
    create_table :victim_diagnoses do |t|
      t.boolean :physical_disability, :default => false
      t.boolean :mental_disability, :default => false
      t.text :diagnosis_description
      t.boolean :violence_witness, :default => false
      t.boolean :sexual_assault_antecedent, :default => false

      t.timestamps
    end
  end
end
