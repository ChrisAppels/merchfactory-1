# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.destroy_all
Address.destroy_all
OrderItem.destroy_all
Product.destroy_all
ProductDesign.destroy_all
OrderItemDesign.destroy_all
ProductDesignFile.destroy_all
ProductCategory.destroy_all
PriceBreak.destroy_all
Feature.destroy_all
Picture.destroy_all
ProductTemplate.destroy_all
Category.destroy_all


user_params = [{
  first_name: "customer 1",
  last_name: "Damiens",
  email: "customer1@gmail.com",
  phone: "0989768543",
  company_name: "Global Corp",
  password: "123456",
  role_id: 1,
  avatar: "http://static4.businessinsider.com/image/56c640526e97c625048b822a-480/donald-trump.jpg"
},
{
  first_name: "staff 1",
  last_name: "Jansnen",
  email: "staff1@gmail.com",
  phone: "9873254987",
  company_name: "Company X",
  password: "123456",
  role_id: 2,
  avatar: "http://dynaimage.cdn.turner.com/cnn-elections/candidates/,w_800/2701a6d0-clinton-4x3.jpg"
},
{
  first_name: "customer 2",
  last_name: "Bleakley",
  email: "customer2@gmail.com",
  phone: "038472638",
  company_name: "Merch Factory",
  password: "123456",
  role_id: 1,
  avatar: "http://www.billboard.com/files/styles/promo_650/public/media/President-Barack-Obama-2014-billboard-650.jpg"
},
{
  first_name: "staff 2",
  last_name: "Bush",
  email: "staff2@gmail.com",
  phone: "3240987234",
  company_name: "Merica Corp",
  password: "123456",
  role_id: 2,
  avatar: "https://upload.wikimedia.org/wikipedia/commons/d/d4/George-W-Bush.jpeg"
},
{
  first_name: "customer 3",
  last_name: "Clinton",
  email: "customer3@gmail.com",
  phone: "340598344",
  company_name: "Merch Factory",
  password: "123456",
  role_id: 1,
  avatar: "http://specials-images.forbesimg.com/imageserve/5638e0f8e4b0ffa7afe6a0ab/320x486.jpg?fit=scale&background=000000"
},
{
  first_name: "staff 3",
  last_name: "Reagan",
  email: "staff3@gmail.com",
  phone: "324987230298",
  company_name: "USA INCORPORATED",
  password: "123456",
  role_id: 2,
  avatar: "https://upload.wikimedia.org/wikipedia/commons/1/16/Official_Portrait_of_President_Reagan_1981.jpg"
},
{
  first_name: "Customer4",
  last_name: "Duck",
  email: "customer4@gmail.com",
  phone: "3243456298",
  company_name: "NL INCORPORATED",
  password: "123456",
  role_id: 1,
  avatar: "https://upload.wikimedia.org/wikipedia/commons/1/16/Official_Portrait_of_President_Reagan_1981.jpg"
}
]

user_params.each do |user_param|
  password = user_param.delete(:password)
  user = User.find_or_create_by(user_param)
  user.password = password
  user.save
end


role_params = [{
  role_type: "customer"
},
{
  role_type: "staff"
},
{
  role_type: "admin"
}]

role_params.each do |role_param|
  Role.find_or_create_by(role_param)
end


Category.create! ([{
  name: "Band Merchandise",
  description: "Make some extra cash from your gigs with our quality band merch products",
},
{
  name: "Golf Merchandise",
  description: "Take a look at our range of expensive golf Merchandise. Show off your wealth to all your rich friends by spending waaaay to much on crap you don't need",
},
{
  name: "Brewery Merch",
  description: "Check out Merch Factory's fantastic range of bottle openers and T-Shirts. Perfect for your craft Brewery",
}])




Product.create! ([{
  name: "Key Tag Bottle Opener",
  description: "Super handy small bottle opener that fits on your keys. Printed both sides with super durable print.Here is some interesting but relatively breif information about our wonderful custom printed USB business card. They have an 8gig capacity and we can print on both sides. You should really get some for your business. You can even pre-load them with your own files.",
  sku: "MF-KTBO-WH-01"
},
{
  name: "iPhone 7 Case",
  description: "Highly durable case with a full colour print. Scratch resistant. Shock proof and some other cool features",
  sku: "MF-PC-IP7"
},
{
  name: "Printed T-Shirt",
  description: "High quality AS Colour T-Shirt with a full colour digital print on one side. Fantastic washability. Great for working out",
  sku: "MF-TS-ASC-01"
},
{
  name: "Printed Guitar Pick",
  description: "Availble in 4 thicknesses and printed on both sides. Your fans will love a guitar pick from their favorite band!",
  sku: "MF-GP-WH-01"
},
{
  name: "Printed Golf Ball",
  description: "Avaible in three diferent styles. The print area is 23mm in diameter. Perfect for corporate golf days",
  sku: "MF-GB-SRX-01"
},
{
  name: "Golf Bag Member ID Tag",
  description: "Membership ID tag for your memeber. Printed with your clubs logo and photo. Personalised with the member's name.",
  sku: "MF-GBT-RND-70"
},
{
  name: "Bar Blade Bottle Opener",
  description: "Perfect bottle opener for bartenders. Large area for branding. These are great for Breweries",
  sku: "MF-GBT-RND-70"
},
{
  name: "Printed USB Business Cards",
  description: "Fits nicely in your wallet and a full 8gig of storage. High quality print on both side. Save your brochures and company documents",
  sku: "MF-USBC-8-01"
}])

picture = Picture.create!({
  product: Product.first,
  # image: "db/seeds/KTBO_PRODUCT_SHOT_01_SQUARE.jpg",
  role: "Product Page Shot"
})
picture.image.store!(File.open(File.join(Rails.root, "db", "seeds","KTBO_PRODUCT_SHOT_01_SQUARE.jpg")))
picture.save

ProductCategory.create ([{
  product_id: 1,
  category_id: 1
},
{
  product_id: 3,
  category_id: 1
},
{
  product_id: 4,
  category_id: 1
},
{
  product_id: 1,
  category_id: 2
},
{
  product_id: 5,
  category_id: 2
},
{
  product_id: 6,
  category_id: 2
},
{
  product_id: 1,
  category_id: 3
},
{
  product_id: 3,
  category_id: 3
},
{
  product_id: 7,
  category_id: 3
}])

Address.create! ([{
  user_id: 1,
  unit_number: "5",
  street_number: "28",
  street_name: "Down",
  city: "Collingwood",
  post_code: "3066",
  state: "VIC",
  country: "Australia"
},
{
    user_id: 1,
  unit_number: "3",
  street_number: "420",
  street_name: "Herengracht",
  city: "Amsterdam",
  post_code: "101BZ",
  state: "Dutch State",
  country: "The Netherlands"
}])



Order.create! ([{
  user_id: 1,
  staff_id: 2,
  status: "pending",
  address_id: 1
},
{
  user_id: 1,
  staff_id: 4,
  status: "pending",
  address_id: 2
}])

OrderItem.create! ([{
  quantity: 200,
  product_id: 4,
  status: "printing",
},
{
  quantity: 500,
  product_id: 1,
  status: "printing",
},
{
  quantity: 100,
  product_id: 3,
  status: "printing",
},
{
  quantity: 250,
  product_id: 6,
  status: "printing",
},
{
  quantity: 1000,
  product_id: 7,
  status: "printing",
},
{
  quantity: 500,
  product_id: 2,
  status: "printing",
}])

PriceBreak.create! ([
{
  product_id: 1,
  quantity: 5,
  price: 9.95,
},
{
  product_id: 1,
  quantity: 10,
  price: 6.80,
},
{
  product_id: 1,
  quantity: 25,
  price: 5.75,
},
{
  product_id: 1,
  quantity: 50,
  price: 2.80,
},
{
  product_id: 1,
  quantity: 100,
  price: 1.95,
},
{
  product_id: 1,
  quantity: 500,
  price: 1.75,
},
{
  product_id: 1,
  quantity: 1000,
  price: 1.69,
},
{
  product_id: 1,
  quantity: 2000,
  price: 1.65,
},
{
  product_id: 1,
  quantity: 5000,
  price: 1.52,
},
{
  product_id: 1,
  quantity: 10000,
  price: 1.39,
}])













