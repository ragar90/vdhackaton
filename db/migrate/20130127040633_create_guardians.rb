class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.string :name
      t.string :document_number
      t.string :phone_number
      t.integer :person_id
      t.integer :document_type_id
      t.integer :parentage_type_id

      t.timestamps
    end
  end
end
