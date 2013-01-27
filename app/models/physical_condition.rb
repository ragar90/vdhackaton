class PhysicalCondition < ActiveRecord::Base
  attr_accessible :name
  has_many :profile_aggressor
end
