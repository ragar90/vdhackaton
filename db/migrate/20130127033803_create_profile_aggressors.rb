class CreateProfileAggressors < ActiveRecord::Migration
  def change
    create_table :profile_aggressors do |t|
      t.boolean :prior_criminal, :default => false
      t.boolean :aftermath_war, :default => false
      t.boolean :violence_witness, :default => false
      t.boolean :sexual_assault_antecedent, :default => false
      t.references :parentage_id
      t.references :physical_condition
      t.references :weapon_kind

      t.timestamps
    end
    add_index :profile_aggressors, :parentage_id_id
    add_index :profile_aggressors, :physical_condition_id
    add_index :profile_aggressors, :weapon_kind_id
  end
end
