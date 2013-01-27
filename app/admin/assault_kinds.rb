ActiveAdmin.register AssaultKind do
  
    ActiveAdmin.register AssaultKind do    
    	menu :if => proc{ can?(:manage, AssaultKind) }     
    	controller.authorize_resource 
  	end   
	menu :parent => "Configuraciones", :label => "Tipos de agresiones"
  
end
