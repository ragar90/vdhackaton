class City < ActiveRecord::Base
  
  belongs_to :state
  has_many :people
  has_many :system_cases

  attr_accessible :name, :state_id

end
