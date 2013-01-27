ActiveAdmin.register Level do
  
  ActiveAdmin.register Level do    
    menu :if => proc{ can?(:manage, Level) }     
    controller.authorize_resource 
  end 

  menu :parent => "Configuraciones"  
  
end
