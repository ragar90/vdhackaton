ActiveAdmin.register City do
 
    ActiveAdmin.register City do    
    	menu :if => proc{ can?(:manage, City) }     
    	controller.authorize_resource 
  	end   

	menu :parent => "Configuraciones"
  
end
