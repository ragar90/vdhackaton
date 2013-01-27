class City < ActiveRecord::Base
  attr_accessible :name, :state_id
  has_many :people
  belongs_to :state
end
