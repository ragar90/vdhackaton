class ViolenceRol < ActiveRecord::Base
  
  belongs_to :person
  belongs_to :system_case
  belongs_to :profile_aggressor
  belongs_to :victim_diagnosis
  
  attr_accessible :rol_kind

end
