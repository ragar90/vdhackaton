ActiveAdmin.register PregnancyState do
  
    ActiveAdmin.register PregnancyState do    
    	menu :if => proc{ can?(:manage, PregnancyState) }     
    	controller.authorize_resource 
  	end  

	menu :parent => "Configuraciones", :label => "Estados de embarazo"
  
end
