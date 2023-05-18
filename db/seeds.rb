Product.create!([
  { name: "Heritage 1.0 Bike Helmet", price: "100.0", description: "Designed for urban cycling, the minimalist Heritage bike helmets are inspired by the simplicity of vintage moto lids and the heritage colorways of the 50s and 60s.", inventory: nil },
  { name: "Brooks B17 Saddle", price: "150.0", description: "The flagship model in the brooks range. Best seller for decades!", inventory: nil },
  { name: "Origin 8 Vex Platform Pedals", price: "45.0", description: "A lightweight, rugged pedal made from engineering-grade thermoplastic with sealed bearing and LSL sleeve bushing to take on the roughest conditions.", inventory: nil },
])

supplier1 = Supplier.create(name: "Thousand", email: "info@explorethousand.com", phone_number: "555-555-3876")
supplier2 = Supplier.create(name: "Brooks", email: "BrooksEngland@email.com", phone_number: "+39 0444 46 11 00")

image1 = Image.create(name: "Thousand", email: "info@explorethousand.com", phone_number: "555-555-3876")
