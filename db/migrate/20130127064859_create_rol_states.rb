class CreateRolStates < ActiveRecord::Migration
  def change
    create_table :rol_states do |t|
      t.string :name

      t.timestamps
    end
  end
end
