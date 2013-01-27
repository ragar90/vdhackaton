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
	    			j.input :address, :label => "Direccion"
	    		end
	    	end
	    end
	end

	if can?(:give_assistance, SystemCase)        
	    f.inputs "Asistencia Medica" do  
	    	f.inputs "Victimas" do
	    		f.has_many :people do |i|
	    			i.input :name, :label => "Nombre"
	    		end
	    	end

	    	f.inputs "Diagnostico" do
	    		#f.has_many :violence_rols do |v|
	    		#	v.input :id, :as => :hidden

	    			f.has_many :victim_diagnoses do |d|
	    				d.input :physical_disability, :label => "Discapacidad fisica", :as => :radio, :collection => [["No", 0], ["Si", 1]]
	    				d.input :mental_disability, :label => "Discapacidad mental", :as => :radio, :collection => [["No", 0], ["Si", 1]]
	    				d.input :violence_witness, :label => "Testigo de violencia", :as => :radio, :collection => [["No", 0], ["Si", 1]]
	    				d.input :sexual_assault_antecedent, :label => "Antecedente de agresion sexual", :as => :radio, :collection => [["No", 0], ["Si", 1]]
	    				d.input :diagnosis_description, :label => "Diagnostico"
	    			end	    			
	    		#end
	    	end
	    end
	end

	if can?(:legal_management, SystemCase)        
	    f.inputs "Trabajo Social" do  
	    	f.inputs "Datos del agresor" do
	    		f.has_one :profile_aggressor do |d|
	    			d.input	:parentage, :label =>"Parentesco"
					d.input	:physical_condition, :label =>"Condicion fisica"
					d.input	:weapon_kind, :label =>"Tipo de arma"
	    			d.input	:aftermath_war, :label =>"Tipo de arma"
	    			d.input	:prior_criminal, :label =>"Antecendente criminal"
	    			d.input	:sexual_assault_antecedent, :label =>"Antecedente de agresion sexual"
	    			d.input	:violence_witness, :label =>"Tiestigo de violencia"
	    		end	
	    	end
	    end
	end

    f.buttons                         
  end  

end
