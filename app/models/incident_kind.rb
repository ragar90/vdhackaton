class IncidentKind < ActiveRecord::Base
  
  has_many :incident_kind_system_cases
  
  attr_accessible :name

end
