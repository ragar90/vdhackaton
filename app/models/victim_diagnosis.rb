class VictimDiagnosis < ActiveRecord::Base
  
  has_many :violence_rols
  has_many :victim_diagnosis_emotional_conditions
  has_many :victim_diagnosis_psychophysiological_alterations
  
  attr_accessible :diagnosis_description, :mental_disability, :physical_disability, :sexual_assault_antecedent, :violence_witness

end
