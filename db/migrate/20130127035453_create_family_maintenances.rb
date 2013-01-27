class CreateFamilyMaintenances < ActiveRecord::Migration
  def change
    create_table :family_maintenances do |t|
      t.string :name

      t.timestamps
    end
  end
end
