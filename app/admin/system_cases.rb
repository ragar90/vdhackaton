ActiveAdmin.register SystemCase do
  
  config.filters = false  

  menu :label => "Casos"      
  
  controller do
    #authorize_resource
    include ActiveAdminCanCan
  end

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
	    	f.inputs "Assaults" do
				f.has_many :system_case_assaults do |j|
					j.input :assault, :label => "Agresion"
				end
			end	
	    end
	end

	if can?(:give_assistance, SystemCase)        
	    f.inputs "Asistencia Medica" do  
	    	f.inputs "Victimas" do
	    		f.has_many :violence_rols do |j|
	    			j.belongs_to :people do |i|
	    				i.input :name, :label => "Nombre"
	    			end

	    			j.has_one :victim_diagnoses do |d|
	    				d.input :physical_disability, :label => "Discapacidad fisica", :as => :radio, :collection => [["No", 0], ["Si", 1]]
	    				d.input :mental_disability, :label => "Discapacidad mental", :as => :radio, :collection => [["No", 0], ["Si", 1]]
	    				d.input :violence_witness, :label => "Testigo de violencia", :as => :radio, :collection => [["No", 0], ["Si", 1]]
	    				d.input :sexual_assault_antecedent, :label => "Antecedente de agresion sexual", :as => :radio, :collection => [["No", 0], ["Si", 1]]
	    				d.input :diagnosis_description, :label => "Diagnostico"
	    			end
	    		end

	    		f.has_many :people do |j|
	    			#Add nested model for injuries
	    		end
	    	end
	    end
	end

	if can?(:legal_management, SystemCase)        
	    f.inputs "Trabajo Social" do  
	    	f.inputs "People" do
	    		f.has_many :people do |j|
	    			#Add nested model for aggressors
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
