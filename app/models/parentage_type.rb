class ParentageType < ActiveRecord::Base
  attr_accessible :name
  has_many :guardians
  has_many :profile_aggressor
end
