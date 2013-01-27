class Person < ActiveRecord::Base
  
  belongs_to :city
  belongs_to :educational_level
  belongs_to :civil_state
  belongs_to :family_maintenance
  belongs_to :pregnacy_state
  belongs_to :document_type
  has_many :zone_kind_histories
  has_many :zone_kinds, :through => :zone_kind_histories
  has_one :guardian
  has_one :occupation

  attr_accessible :address, :age, :city_id, :civil_state_id, :document_number, :document_type_id, :educational_level_id, :family_maintenance_id, :name, :phone_number, :pregnancy_state_id, :school_grade, :school_name, :sex, :total_of_daughters, :total_of_sons, :zone_kind_id

  #validates :document_number, :uniqueness => { :scope => :document_type_id }

  before_create :check_person

  private

    def check_person
      tmp_person = Person.find_by_document_number_and_document_type_id(document_number, document_type_id)
      if !tmp_person.nil?
        self.address = tmp_person.address
        self.city_id = tmp_person.city_id
        self.civil_state_id = tmp_person.civil_state_id
        self.educational_level_id = tmp_person.educational_level_id
        self.family_maintenance_id = tmp_person.family_maintenance_id
        self.phone_number = tmp_person.phone_number
        self.pregnancy_state_id = tmp_person.pregnancy_state_id
        #self.school_grade = tmp_person.school_grade
        #self.school_name = tmp_person.school_name
        self.total_of_daughters = tmp_person.total_of_daughters
        self.total_of_sons = tmp_person.total_of_sons
        self.id = tmp_person.id

        tmp_person.destroy
      end
    end

end
