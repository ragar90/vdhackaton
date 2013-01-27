ActiveAdmin.register RolState do
  
    ActiveAdmin.register RolState do    
    	menu :if => proc{ can?(:manage, RolState) }     
    	controller.authorize_resource 
  	end  

	menu :parent => "Configuraciones"
  
end
