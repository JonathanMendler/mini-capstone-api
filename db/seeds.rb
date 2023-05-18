product = Product.create!(
  { name: "Heritage 1.0 Bike Helmet", price: "100.0", description: "Designed for urban cycling, the minimalist Heritage bike helmets are inspired by the simplicity of vintage moto lids and the heritage colorways of the 50s and 60s.", inventory: 5, supplier_id: supplier1.id })
  Image.create(url: "https://cdn.shopify.com/s/files/1/0836/6919/products/retro_bike_helmet_001_800x.jpg?v=1611711971", product_id: product.id)
  Image.create(url: "https://cdn.shopify.com/s/files/1/0836/6919/products/retro_bike_helmet_004_800x.jpg?v=1611711971", product_id: product.id)
  Image.create(url: "https://cdn.shopify.com/s/files/1/0836/6919/files/thousand-features-helmet-poplock-speedway-creme.jpg", product_id: product.id)

product = Product.create!(
  { name: "Brooks B17 Saddle", price: "150.0", description: "The flagship model in the brooks range. Best seller for decades!", inventory: nil, supplier_id: supplier2.id })
  Image.create(url: "https://www.petesgarage.com/images/1069-2726-large.jpg", "https://content.backcountry.com/images/items/1200/BHS/BHS0021/HON_D9.jpg", product_id: product.id)
  Image.create(url: "https://content.backcountry.com/images/items/1200/BHS/BHS0021/HON_D8.jpg", product_id: product.id)

product = Product.create!(
  { name: "Origin 8 Vex Platform Pedals", price: "45.0", description: "A lightweight, rugged pedal made from engineering-grade thermoplastic with sealed bearing and LSL sleeve bushing to take on the roughest conditions.", inventory: nil, supplier_id: supplier2.id })
  Image.create(url: "https://aventon-images.imgix.net/products/410064.jpg?auto=compress,format&q=75", product_id: product.id)
  Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUC_8n2Wpkl7APgUMv3PiXDZvl86nqKB6qN0BB4SiF825fEc6iOzRwSe6vFLliTMu-72M&usqp=CAU", product_id: product.id)
  Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj9loemhOW1qP7dAXeS68JrirHmoaEK9B__VsMGzHca40TopFtP7cMgBeG6X42qE4NYqQ&usqp=CAU", product_id: product.id)

supplier1 = Supplier.create(name: "Thousand", email: "info@explorethousand.com", phone_number: "555-555-3876")
supplier2 = Supplier.create(name: "Brooks", email: "BrooksEngland@email.com", phone_number: "+39 0444 46 11 00")
