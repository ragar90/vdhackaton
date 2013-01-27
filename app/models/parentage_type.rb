class ParentageType < ActiveRecord::Base
  attr_accessible :name
  has_many :guardians
end
