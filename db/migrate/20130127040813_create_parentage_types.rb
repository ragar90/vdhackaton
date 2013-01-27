class CreateParentageTypes < ActiveRecord::Migration
  def change
    create_table :parentage_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
