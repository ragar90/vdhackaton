class SystemCase < ActiveRecord::Base
  
  belongs_to :city_id
  belongs_to :zone_kind
  has_many :violence_rols
  has_many :system_case_assaults  
  has_many :incident_kind_system_cases
  
  attr_accessible :assault_date, :complaint, :recidivism

end
