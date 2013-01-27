class PhysicalCondition < ActiveRecord::Base
  
  has_many :profile_aggressor

  attr_accessible :name
  
end
