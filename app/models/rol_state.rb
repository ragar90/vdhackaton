class RolState < ActiveRecord::Base
  attr_accessible :name
  has_many :violence_rol_states
  has_many :violence_rols, :through => :violence_rol_states
end
