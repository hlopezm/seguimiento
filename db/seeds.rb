# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ nombre: 'Star Wars' }, { nombre: 'Lord of the Rings' }])
#   Character.create(nombre: 'Luke', movie: movies.first)
  cities = City.create([{ nombre: 'Pachuca' }, { nombre: 'Tula' }, { nombre: 'Tulancingo' }, { nombre: 'Tizayuca' }])
  locals = Local.create([{ nombre: 'Distrito I' }, { nombre: 'Distrito II' }, { nombre: 'Distrito III' }, { nombre: 'Distrito IV' }])
  federals = Federal.create([{ nombre: 'Distrito I' }, { nombre: 'Distrito II' }, { nombre: 'Distrito III' }, { nombre: 'Distrito IV' }])
  reports = Report.create([{ nombre: 'Gira Pachuca' }, { nombre: 'Gira Huasteca' }])
