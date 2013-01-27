class ZoneKindHistory < ActiveRecord::Base
  attr_accessible :created_on, :person_id, :updated_on, :zone_kind_id
  belongs_to :person
  belongs_to :zone_kind
end
