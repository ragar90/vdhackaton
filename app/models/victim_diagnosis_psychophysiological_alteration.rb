class VictimDiagnosisPsychophysiologicalAlteration < ActiveRecord::Base
  
  belongs_to :psychophysiological_alteration
  belongs_to :victim_diagnosis

  # attr_accessible :title, :body
  
end
