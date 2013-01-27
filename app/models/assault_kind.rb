class AssaultKind < ActiveRecord::Base
  
  has_many :assaults

  attr_accessible :name


end
