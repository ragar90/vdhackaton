class SystemCase < ActiveRecord::Base
  include AASM
  belongs_to :city
  belongs_to :zone_kind
  has_many :system_case_assaults  
  has_many :incident_kind_system_cases           
  has_many :violence_rols
  has_many :people, :through => :violence_rols   
  has_many :victim_diagnoses, :through => :violence_rols
  
  attr_accessible :assault_date, :complaint, :recidivism, :people_attributes, :violence_rols_attributes, :victim_diagnoses_attributes

  accepts_nested_attributes_for :people, allow_destroy: true
  attr_accessible :system_case_assaults_attributes
  accepts_nested_attributes_for :system_case_assaults, allow_destroy: true
  
  accepts_nested_attributes_for :violence_rols, allow_destroy: true
  accepts_nested_attributes_for :victim_diagnoses, allow_destroy: true 
  aasm_column :state
	aasm :whiny_transitions => false do
		state :registration, :initial=>true
		state :medical_atention
		state :psicological_atention
		state :legal_atention      
		
		event :listen_story do        
			transitions :from => :registration, :to => :psicological_atention   
		end
		
		event :heal_injuries do  
			transitions :from => :psicological_atention, :to => :medical_atention
		end 
		
		event :demand do   
			transitions :from => :medical_atention, :to => :legal_atention 
		end   
		
		event :emergency do     
			transitions :from => :registration, :to => :medical_atention            
		end
		
	end

end
