class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= AdminUser.new
    user.level ||=Level.first      
    case user.level.name      
      when "Administrador"
        can :manage, :all
      when "Recepcionista"
        can [:create, :read], SystemCase 
        can :create, ViolenceRol 
        can :create, Person 
        #can :manage, SystemCase  
        #cannot [:destroy,:edit], SystemCase   
      when "Psicologo"
        can [:follow_case, :edit, :update], SystemCase 
      when "Medico"
        can :manage, ViolenceRol
        can :manage, VictimDiagnosis 
        can :manage, Person 
        can [:give_assistance, :read, :edit, :update], SystemCase 
      when "Trabajador Social"
        can [:legal_management, :edit, :update], SystemCase 
    end
  end

end  