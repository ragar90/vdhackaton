ActiveAdmin.register CivilState do
 
    ActiveAdmin.register CivilState do    
    	menu :if => proc{ can?(:manage, CivilState) }     
    	controller.authorize_resource 
  	end   

	menu :parent => "Configuraciones"
  
end
