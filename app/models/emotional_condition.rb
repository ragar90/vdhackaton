class EmotionalCondition < ActiveRecord::Base

  has_many :victim_diagnosis_emotional_conditions

  attr_accessible :name
  
end
