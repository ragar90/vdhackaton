class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.boolean :sex
      t.integer :total_of_sons
      t.integer :total_of_daughters
      t.string :document_number
      t.string :address
      t.string :phone_number
      t.string :school_name
      t.string :school_grade
      t.integer :city_id
      t.integer :educational_level_id
      t.integer :civil_state_id
      t.integer :family_maintenance_id
      t.integer :pregnancy_state_id
      t.integer :document_type_id

      t.timestamps
    end
  end
end
