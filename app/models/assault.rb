class Assault < ActiveRecord::Base
  
  belongs_to :assault_kind
  has_many :system_case_assaults
  
  attr_accessible :name

end
