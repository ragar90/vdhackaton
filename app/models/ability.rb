class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= AdminUser.new       
    case user.level.name      
      when "Administrador"
        can :manage, :all
      when "Recepcionista"
        can :manage, Level   
        #cannot [:destroy,:edit], Post   
      end
  end 
end  