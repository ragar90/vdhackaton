class WeaponKind < ActiveRecord::Base

  has_many :profile_aggressors
  
  attr_accessible :name

end
