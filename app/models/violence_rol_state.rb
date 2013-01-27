class ViolenceRolState < ActiveRecord::Base
  attr_accessible :active_state, :admin_user_id, :role_state_id, :violence_role_id
  belongs_to :admin_user
  belongs_to :rol_state
  belongs_to :violence_role
end
