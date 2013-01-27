class CreateZoneKindHistories < ActiveRecord::Migration
  def change
    create_table :zone_kind_histories do |t|
      t.integer :person_id
      t.integer :zone_kind_id
      t.datetime :created_on
      t.datetime :updated_on

      t.timestamps
    end
  end
end
