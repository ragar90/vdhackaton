class Occupation < ActiveRecord::Base
  attr_accessible :address, :description, :person_id, :phone_number, :work_place
end
