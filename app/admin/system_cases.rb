ActiveAdmin.register SystemCase do
  
  config.filters = false  

  menu :label => "Casos"      
  
  controller do
    #authorize_resource
    include ActiveAdminCanCan
  end

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
	    			j.input :name, :label => "Nombre"
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
	    	#f.inputs "Victimas" do
	    	#	f.has_many :people do |i|
	    	#		i.input :name, :label => "Nombre"
	    	#	end
	    	#end

	    	f.inputs "Diagnostico" do
	    		if.has_many :violence_rols do |v|
	    			v.input :id, :as => :hidden

		    		v.has_many :person do |i|
		    			i.input :name, :label => "Nombre"
		    		end

	    			v.has_many :victim_diagnoses do |d|
	    				d.input :physical_disability, :label => "Discapacidad fisica", :as => :radio, :collection => [["No", 0], ["Si", 1]]
	    				d.input :mental_disability, :label => "Discapacidad mental", :as => :radio, :collection => [["No", 0], ["Si", 1]]
	    				d.input :violence_witness, :label => "Testigo de violencia", :as => :radio, :collection => [["No", 0], ["Si", 1]]
	    				d.input :sexual_assault_antecedent, :label => "Antecedente de agresion sexual", :as => :radio, :collection => [["No", 0], ["Si", 1]]
	    				d.input :diagnosis_description, :label => "Diagnostico"
	    			
	    				d.has_many :victim_diagnosis_emotional_conditions do |e| 
	    					e.input :emotional_condition, :label => "Condicion emocional"
	    				end

	    				d.has_many :victim_diagnosis_psychophysiological_alterations do |e|
	    					e.input :psychophysiological_alteration, :label => "Alteracion psicofisiologica"
	    				end
	    			end	    			
	    		end
	    	end
	    end
	end

	if can?(:legal_management, SystemCase)        
	    f.inputs "Datos del agresor" do
	    #	f.has_many :profile_aggressors do |d|

	    #·	end
    	end
	end

    f.buttons                         
  end  

end
