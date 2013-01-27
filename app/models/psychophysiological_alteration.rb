class PsychophysiologicalAlteration < ActiveRecord::Base
  
  has_many :victim_diagnosis_psychophysiological_alterations

  attr_accessible :name
  
end
