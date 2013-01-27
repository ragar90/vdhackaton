class ZoneKind < ActiveRecord::Base
  
  attr_accessible :name
  
  has_many :zone_kind_histories
  has_many :people, :through => :zone_kind_histories

end
