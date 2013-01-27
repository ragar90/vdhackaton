ActiveAdmin.register EducationalLevel do
 
    ActiveAdmin.register EducationalLevel do    
    	menu :if => proc{ can?(:manage, EducationalLevel) }     
    	controller.authorize_resource 
  	end   

	menu :parent => "Configuraciones"
  
end
