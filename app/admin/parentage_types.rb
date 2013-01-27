ActiveAdmin.register ParentageType do
 
    ActiveAdmin.register ParentageType do    
    	menu :if => proc{ can?(:manage, ParentageType) }     
    	controller.authorize_resource 
  	end  

	menu :parent => "Configuraciones", :label => "TParentescos"
  
end
