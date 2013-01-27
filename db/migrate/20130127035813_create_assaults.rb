class CreateAssaults < ActiveRecord::Migration
  def change
    create_table :assaults do |t|
      t.string :name
      t.references :assault_kind

      t.timestamps
    end
    add_index :assaults, :assault_kind_id
  end
end
