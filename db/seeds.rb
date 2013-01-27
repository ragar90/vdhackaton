# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Level.create!(:name => "Administrador")
Level.create!(:name => "Recepcionista")
Level.create!(:name => "Psicologo")
Level.create!(:name => "Medico")
Level.create!(:name => "Trabajador Social")

DocumentType.create!(:name => "DUI")
DocumentType.create!(:name => "NIT")