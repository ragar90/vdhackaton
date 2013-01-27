class ViolenceRol < ActiveRecord::Base
  
  belongs_to :person
  belongs_to :system_case
  belongs_to :profile_aggressor
  has_one :victim_diagnosis
  has_many :violence_rol_states
  has_many :rol_states, :through => :violence_rol_states
  attr_accessible :rol_kind

end
