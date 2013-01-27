class SystemCaseAssault < ActiveRecord::Base
  
  belongs_to :system_case
  belongs_to :assault

  # attr_accessible :title, :body
  
end
