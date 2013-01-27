ActiveAdmin.register DocumentType do
 
    ActiveAdmin.register DocumentType do    
    	menu :if => proc{ can?(:manage, DocumentType) }     
    	controller.authorize_resource 
  	end   

	menu :parent => "Configuraciones"
  
end
