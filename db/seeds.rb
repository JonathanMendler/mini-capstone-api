# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
product = Product.new({ name: "Origin 8 Vex Platform Pedals", price: 45, image_url: "https://aventon-images.imgix.net/products/410064.jpg?auto=compress,format&q=75", description: "A lightweight, rugged pedal made from engineering-grade thermoplastic with sealed bearing and LSL sleeve bushing to take on the roughest conditions." })
product.save

product = Product.new({ name: "Heritage 1.0 Bike Helmet", price: 100, image_url: "https://cdn.shopify.com/s/files/1/0836/6919/products/retro_bike_helmet_001_800x.jpg?v=1611711971", description: "Designed for urban cycling, the minimalist Heritage bike helmets are inspired by the simplicity of vintage moto lids and the heritage colorways of the 50s and 60s." })
product.save

product = Product.new({ name: "Brooks B17 Saddle", price: 150, image_url: "https://www.petesgarage.com/images/1069-2726-large.jpg", description: "The flagship model in the brooks range. Best seller for decades!" })
product.save
