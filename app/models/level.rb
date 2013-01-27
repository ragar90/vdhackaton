class Level < ActiveRecord::Base
  
  has_many :admin_users

  attr_accessible :name
  
end
