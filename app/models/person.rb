class Person < ActiveRecord::Base
  attr_accessible :address, :age, :city_id, :civil_state_id, :document_number, :document_type_id, :educational_level_id, :family_maintenance_id, :name, :phone_number, :pregnancy_type_id, :school_grade, :school_name, :sex, :total_of_daughters, :total_of_sons, :zone_kind_id
end
