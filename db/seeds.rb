# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
parking = Estacionamento.create(nome: "Car Parking", preco_vaga: 6, taxa: 2)
User.create(email: "adm@gmail.com", password: "adm123", funcao: "adm")
User.create(email: "operador@gmail.com", password: "123456")
parking.caixas.create

5.times do 
    parking.vagas.create
end