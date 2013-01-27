class SystemCase < ActiveRecord::Base
  
  belongs_to :city
  belongs_to :zone_kind
  has_many :violence_rols
  has_many :system_case_assaults  
  has_many :incident_kind_system_cases
  has_many :people, :through => :violence_rols
  
  attr_accessible :assault_date, :complaint, :recidivism, :people_attributes

  accepts_nested_attributes_for :people, allow_destroy: true
  attr_accessible :system_case_assaults_attributes
  accepts_nested_attributes_for :system_case_assaults, allow_destroy: true
end
