# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Seeds for Users
User.create(name: "John Doe", email: "johndoe@example.com", phone: 0776666, location: "Ntiwa") 
User.create(name: "Jane Doe", email: "janedoe@example.com", phone: 45454565, location: "Kenya" )

# Seeds for Pets
Pet.create(name: "Fluffy", age: 23, species: "cat", breed: "Aus" )
Pet.create(name: "Fido", age: 12, species: "dog", breed: "Kenyan")
Pet.create(name: "Buddy", age: 32, species: "dog", breed: "Italian")
Pet.create(name: "Whiskers", age: 21, species: "cat", breed: "German")

# Seeds for appiontments 

