ActiveAdmin.register PsychophysiologicalAlteration do
  
    ActiveAdmin.register PsychophysiologicalAlteration do    
    	menu :if => proc{ can?(:manage, PsychophysiologicalAlteration) }     
    	controller.authorize_resource 
  	end  

	menu :parent => "Configuraciones"
  
end
