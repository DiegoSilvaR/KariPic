# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Crear un usuario normal
Person.create!(
  name: "Diego Silva",
  email: "diegoalejandrosilvarodriguez@gmail.com",
  password: "123456",
  role: :usuario
)

# Crear un usuario administrador
Person.create!(
  name: "KariPic",
  email: "karipic@mail.com",
  password: "123456",
  role: :admin
)
