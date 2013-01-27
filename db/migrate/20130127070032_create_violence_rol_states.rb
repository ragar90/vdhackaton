class CreateViolenceRolStates < ActiveRecord::Migration
  def change
    create_table :violence_rol_states do |t|
      t.integer :violence_role_id
      t.integer :role_state_id
      t.boolean :active_state
      t.integer :admin_user_id

      t.timestamps
    end
  end
end
