ActiveAdmin.register FamilyMaintenance do
 
    ActiveAdmin.register FamilyMaintenance do    
    	menu :if => proc{ can?(:manage, FamilyMaintenance) }     
    	controller.authorize_resource 
  	end  

	menu :parent => "Configuraciones"
  
end
