class CreateAssaultKinds < ActiveRecord::Migration
  def change
    create_table :assault_kinds do |t|
      t.string :name

      t.timestamps
    end
  end
end
