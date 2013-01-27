ActiveAdmin.register SystemCase do
  
  config.filters = false  

  menu :label => "Casos"      
  
  #controller do
  #  authorize_resource
  #  include ActiveAdminCanCan
  #end

  #actions get_actions    

  active_admin_allowed_action_items         

  form do |f|       
  	if can?(:create, SystemCase)                 
	    f.inputs "Nuevo caso" do  
	    	f.inputs "People" do
	    		f.has_many :people do |j|
	    			j.input :name, :label => "Nombre"
	    			j.input :age, :label => "Edad", :input_html => { :class => 'person_age' }
	    			j.input :school_name, :label => "Escuela"
	    			j.input :school_grade, :label => "Grado"
	    			j.input :sex, :label => "Sexo", :as => :radio, :collection => [["Hombre", 0], ["Mujer", 1]]
	    			j.input :document_type, :label => "Tipo de documento"
	    			j.input :document_number, :label => "Documento"
	    		end
	    	end 
	    end     
	end 

	if can?(:follow_case, SystemCase)        
	    f.inputs "Conversacion Activa" do  
	    	f.inputs "People" do
	    		f.has_many :people do |j|
	    			j.input :address, :label => "Direccion"
	    		end
	    	end
	    end
	end

    f.buttons                         
  end  

  #def get_actions
  #	if can?(:start_case, SystemCase)  
  #		return :index, :new, :create, :show  
  #	elsif can?(:follow_case, SystemCase)  
  #		return :index, :edit, :update, :show
  #	end  		
  #end

end
