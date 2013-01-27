class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.string :description
      t.string :work_place
      t.string :address
      t.string :phone_number
      t.integer :person_id

      t.timestamps
    end
  end
end
