#!/bin/env ruby
# encoding: utf-8
unless Level.all.length > 0
	Level.create!(:name => "Administrador")
	Level.create!(:name => "Recepcionista")
	Level.create!(:name => "Psicologo")
	Level.create!(:name => "Medico")
	Level.create!(:name => "Trabajador Social")
end


unless State.all.length>0
	State.create!(:name=>"Ahuachapan")	
	State.create!(:name=>"Cabañas")
	State.create!(:name=>"Chalatenango")
	State.create!(:name=>"Cuscatlan")
	State.create!(:name=>"La Libertad")
	State.create!(:name=>"La Paz")
	State.create!(:name=>"La Unión")
	State.create!(:name=>"Morazán")
	State.create!(:name=>"San Miguel")
	State.create!(:name=>"San Salvador")
	State.create!(:name=>"San Vicente")
	State.create!(:name=>"Santa Ana")
	State.create!(:name=>"Sonsonate")
	State.create!(:name=>"Usulután")
end
unless CivilState.all.length > 0 
	CivilState.create!(:name=>"Soltero/a")
	CivilState.create!(:name=>"Separado/a")
	CivilState.create!(:name=>"Casado/a")
	CivilState.create!(:name=>"Divorciado/a")
	CivilState.create!(:name=>"Viudo/a")
	CivilState.create!(:name=>"Unión NM")
end
unless AssaultKind.all.length > 0
	AssaultKind.create!(:name => "Violencia Intrafamiliar")
	AssaultKind.create!(:name => "Maltrato a la niñez")
	AssaultKind.create!(:name => "Agresión sexual")
end
unless EducationalLevel.all.length > 0
	EducationalLevel.create!(:name => "Primaria")
	EducationalLevel.create!(:name => "Secundaria")
	EducationalLevel.create!(:name => "Bachillerato")
	EducationalLevel.create!(:name => "Técnico")
	EducationalLevel.create!(:name => "Universitario")
	EducationalLevel.create!(:name => "Ninguno")
end
unless PregnancyState.all.length > 0
	PregnancyState.create!(:description => "Si")
	PregnancyState.create!(:description => "No")
	PregnancyState.create!(:description => "N/A")
	PregnancyState.create!(:description => "Desconoce")
	PregnancyState.create!(:description => "Deseado")
	PregnancyState.create!(:description => "No deseado")
end
unless ZoneKind.all.length > 0
	ZoneKind.create!(:name => "Urbana")
	ZoneKind.create!(:name => "Rural")
	ZoneKind.create!(:name => "Marginal")
end
unless FamilyMaintenance.all.length > 0
	FamilyMaintenance.create!(:name => "Mujer jefa de hogar")
	FamilyMaintenance.create!(:name => "Hombre jefe de hogar")
	FamilyMaintenance.create!(:name => "Jefatura compartida")
	FamilyMaintenance.create!(:name => "Proveedor(a) desde el extranjero")
	FamilyMaintenance.create!(:name => "Otro miembro de la familia")
end