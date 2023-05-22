supplier1 = Supplier.create(name: "Thousand", email: "info@explorethousand.com", phone_number: "555-555-3876")
supplier2 = Supplier.create(name: "Brooks", email: "BrooksEngland@email.com", phone_number: "+39 0444 46 11 00")

product = Product.create!(
  { name: "Heritage 1.0 Bike Helmet", price: "100.0", description: "Designed for urban cycling, the minimalist Heritage bike helmets are inspired by the simplicity of vintage moto lids and the heritage colorways of the 50s and 60s.", inventory: 5, supplier_id: supplier1.id }
)
Image.create(url: "https://cdn.shopify.com/s/files/1/0836/6919/products/retro_bike_helmet_001_800x.jpg", product_id: product.id)
Image.create(url: "https://cdn.shopify.com/s/files/1/0836/6919/products/retro_bike_helmet_004_800x.jpg", product_id: product.id)
Image.create(url: "https://cdn.shopify.com/s/files/1/0836/6919/files/thousand-features-helmet-poplock-speedway-creme.jpg", product_id: product.id)

product = Product.create!(
  { name: "Brooks B17 Saddle", price: "150.0", description: "The flagship model in the brooks range. Best seller for decades!", inventory: 11, supplier_id: supplier2.id }
)
Image.create(url: "https://www.petesgarage.com/images/1069-2726-large.jpg", product_id: product.id)
Image.create(url: "https://content.backcountry.com/images/items/1200/BHS/BHS0021/HON_D8.jpg", product_id: product.id)
Image.create(url: "https://content.backcountry.com/images/items/1200/BHS/BHS0021/HON_D9.jpg", product_id: product.id)

product = Product.create!(
  { name: "Origin 8 Vex Platform Pedals", price: "45.0", description: "A lightweight, rugged pedal made from engineering-grade thermoplastic with sealed bearing and LSL sleeve bushing to take on the roughest conditions.", inventory: 16, supplier_id: supplier2.id }
)
Image.create(url: "https://m.media-amazon.com/images/I/51SWGcYJc5L._AC_SL1200_.jpg", product_id: product.id)
Image.create(url: "https://cdn.shopify.com/s/files/1/0566/5180/8923/products/410061-2_1400x.jpg", product_id: product.id)
Image.create(url: "https://cdn.shopify.com/s/files/1/0566/5180/8923/products/410061-3_1400x.jpg", product_id: product.id)

order = Order.create(

)