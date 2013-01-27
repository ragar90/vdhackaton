class Guardian < ActiveRecord::Base
  attr_accessible :document_number, :document_type_id, :name, :parentage_type_id, :person_id, :phone_number
end
