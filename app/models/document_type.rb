class DocumentType < ActiveRecord::Base
  
  has_many :people
  has_many :guardians

  attr_accessible :name

end
