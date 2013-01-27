class ProfileAggressor < ActiveRecord::Base
  
  belongs_to :parentage
  belongs_to :physical_condition
  belongs_to :weapon_kind
  has_one :violence_roles

  attr_accessible :aftermath_war, :prior_criminal, :sexual_assault_antecedent, :violence_witness

end
