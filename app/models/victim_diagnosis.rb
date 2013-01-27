class VictimDiagnosis < ActiveRecord::Base
  
  belongs_to :violence_rol
  has_many :victim_diagnosis_emotional_conditions
  has_many :victim_diagnosis_psychophysiological_alterations
  has_many :emotional_conditions, :through => :victim_diagnosis_emotional_conditions
  has_many :psychophysiological_alterations, :through => :victim_diagnosis_psychophysiological_alterations
  
  attr_accessible :diagnosis_description, :mental_disability, :physical_disability, :sexual_assault_antecedent, :violence_witness
  attr_accessible :victim_diagnosis_emotional_conditions_attributes
  attr_accessible :victim_diagnosis_psychophysiological_alterations_attributes

  accepts_nested_attributes_for :victim_diagnosis_emotional_conditions
  accepts_nested_attributes_for :victim_diagnosis_psychophysiological_alterations

end
