ActiveAdmin.register SystemCase do
  
  config.filters = false  

  menu :label => "Casos"                   

  form do |f|                         
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

    f.actions                         
  end  

end
