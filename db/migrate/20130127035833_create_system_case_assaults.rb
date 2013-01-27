class CreateSystemCaseAssaults < ActiveRecord::Migration
  def change
    create_table :system_case_assaults do |t|
      t.references :system_case
      t.references :assault

      t.timestamps
    end
    add_index :system_case_assaults, :system_case_id
    add_index :system_case_assaults, :assault_id
  end
end
