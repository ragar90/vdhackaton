class DocumentType < ActiveRecord::Base
  attr_accessible :name
  has_many :people
  has_many :guardians
end
