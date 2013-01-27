class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= AdminUser.new
    user.level ||=Level.first      
    case user.level.name      
      when "Administrador"
        can :manage, :all
      when "Recepcionista"
        can :manage, SystemCase   
        #cannot [:destroy,:edit], Post   
      end
  end 
end  