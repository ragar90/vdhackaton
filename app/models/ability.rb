class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= AdminUser.new       
    case user.level.name      
      when "Administrador"
        can :manage, :all
      when "Recepcionista"
        can :create, SystemCase 
        #can :manage, SystemCase  
        #cannot [:destroy,:edit], SystemCase   
      when "Psicologo"
        can [:follow_case, :edit, :update], SystemCase 
    end
  end

end  