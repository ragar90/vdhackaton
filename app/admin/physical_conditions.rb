ActiveAdmin.register PhysicalCondition do
  
    ActiveAdmin.register PhysicalCondition do    
    	menu :if => proc{ can?(:manage, PhysicalCondition) }     
    	controller.authorize_resource 
  	end 

	menu :parent => "Configuraciones" 
  
end
