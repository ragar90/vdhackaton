class ViolenceRol < ActiveRecord::Base
  
  belongs_to :person
  belongs_to :system_case
  belongs_to :profile_aggressor
  has_many :victim_diagnoses #should be has_one
  has_many :violence_rol_states
  has_many :rol_states, :through => :violence_rol_states
  
  attr_accessible :rol_kind, :victim_diagnoses_attributes

  accepts_nested_attributes_for :victim_diagnoses, allow_destroy: true

end
