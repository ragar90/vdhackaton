class Guardian < ActiveRecord::Base
  attr_accessible :document_number, :document_type_id, :name, :parentage_type_id, :person_id, :phone_number
  belongs_to :person
  belongs_to :document_type
  belongs_to :parentage_type
end
