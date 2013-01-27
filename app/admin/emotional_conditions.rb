ActiveAdmin.register EmotionalCondition do
 
    ActiveAdmin.register EmotionalCondition do    
    	menu :if => proc{ can?(:manage, EmotionalCondition) }     
    	controller.authorize_resource 
  	end  

	menu :parent => "Configuraciones" 
  
end
