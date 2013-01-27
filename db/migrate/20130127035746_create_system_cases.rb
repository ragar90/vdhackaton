class CreateSystemCases < ActiveRecord::Migration
  def change
    create_table :system_cases do |t|
      t.datetime :assault_date
      t.boolean :recidivism, :default => false
      t.boolean :complaint, :default => false
      t.references :city
      t.references :zone_kind

      t.timestamps
    end
    add_index :system_cases, :city_id
    add_index :system_cases, :zone_kind_id
  end
end
