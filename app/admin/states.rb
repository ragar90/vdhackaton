ActiveAdmin.register State do
  
    ActiveAdmin.register State do    
    	menu :if => proc{ can?(:manage, State) }     
    	controller.authorize_resource 
  	end  

	menu :parent => "Configuraciones"
  
end
