class VictimDiagnosisEmotionalCondition < ActiveRecord::Base
  
  belongs_to :victim_diagnosis
  belongs_to :emotional_condition

  # attr_accessible :title, :body
  
end
