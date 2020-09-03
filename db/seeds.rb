# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Package.destroy_all
Furniture.destroy_all


p team = Team.create(
company: "Giotto",
rental_period: 9,
budget: 600,
)





p rookie_chair = Furniture.new(
  name: "Rookie",
  description: "Rookie is a small, agile and unconventionally simple chair. It provides a high level of immediate comfort with a minimal number of adjustments. Both the seat and backrest of Rookie are height-adjustable. In addition to these classic functions of a task chair, other ergonomic features are directly incorporated into Rookie's structural design: the backrest flexes slightly when pressure is applied, and the front edge of the seat is unusually pliant.",
  category: "Chairs",
  price: 399
)
file_1 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598370129/rookie_chair_1.webp')
file_2 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598370129/rookie_chair_2.webp')
file_3 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598370129/rookie_chair_3.webp')
rookie_chair.images.attach(io: file_1, filename: 'rookie_1.webp', content_type: 'image/webp')
rookie_chair.images.attach(io: file_2, filename: 'rookie_2.webp', content_type: 'image/webp')
rookie_chair.images.attach(io: file_3, filename: 'rookie_3.webp', content_type: 'image/webp')
rookie_chair.save!

p se_motion_chair = Furniture.new(
  name: "Se:Motion",
  description: "Whether in black or light grey, se:motion emits a sense of dynamic lightness. Moreover, the style is far more than a mere design statement. The perforated backrest ensures elasticity and maximum sitting comfort. The same applies for the ideally positioned lumbar curve and the ergonomically designed seat with slim edges – the impressive looking design ensures both a good posture and mobility.",
  category: "Chairs",
  price: 345
)
file_1 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598438455/se_motion_chair_1.webp')
file_2 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598438455/se_motion_chair_2.webp')
file_3 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598438455/se_motion_chair_3.webp')
file_4 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598438455/se_motion_chair_4.webp')
se_motion_chair.images.attach(io: file_1, filename: 'se_motion_1.webp', content_type: 'image/webp')
se_motion_chair.images.attach(io: file_2, filename: 'se_motion_2.webp', content_type: 'image/webp')
se_motion_chair.images.attach(io: file_3, filename: 'se_motion_3.webp', content_type: 'image/webp')
se_motion_chair.images.attach(io: file_4, filename: 'se_motion_4.webp', content_type: 'image/webp')
se_motion_chair.save!

p d1_chair = Furniture.new(
  name: "D1",
  description: "The D1 office chair unites an aesthetic design, innovative materials and dynamic sitting characteristics. Thanks to the construction of the steel tube frame with mesh, the seat adjusts perfectly to the sitting position and stimulates the user to sit actively and more dynamically. The D1 is an award winning office chair (Red Dot Award, German Innovation Award & German Design Award Winner).",
  category: "Chairs",
  price: 779
)
file_1 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598371163/d1_chair_1.png')
file_2 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598371163/d1_chair_2.png')
file_3 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598371163/d1_chair_3.png')
file_4 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598371163/d1_chair_4.png')
d1_chair.images.attach(io: file_1, filename: 'd1_chair_1.png', content_type: 'image/png')
d1_chair.images.attach(io: file_2, filename: 'd1_chair_2.png', content_type: 'image/png')
d1_chair.images.attach(io: file_3, filename: 'd1_chair_3.png', content_type: 'image/png')
d1_chair.images.attach(io: file_4, filename: 'd1_chair_4.png', content_type: 'image/png')
d1_chair.save!

p nova_a_desk = Furniture.new(
  name: "Nova A",
  description: "The Nova A desk is a modern classic. The universal design and the functional desking system allow to fit into every sort of interior. A-shaped legs are sure to add subtle look and elegance to Nova A desks.",
  category: "Desks",
  price: 320
)
file_1 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598370073/nova_a_desk_1.webp')
file_2 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598370073/nova_a_desk_2.webp')
file_3 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598370073/nova_a_desk_3.webp')
nova_a_desk.images.attach(io: file_1, filename: 'nova_tab1.webp', content_type: 'image/webp')
nova_a_desk.images.attach(io: file_2, filename: 'nova_tab2.webp', content_type: 'image/webp')
nova_a_desk.images.attach(io: file_3, filename: 'nova_tab3.webp', content_type: 'image/webp')
nova_a_desk.save!


p nova_wood_desk = Furniture.new(
  name: "Nova Wood",
  description: "The Nova Wood desk will allow you to create a desired style whether you want it to convey a feeling of warmth and cosiness, resemble a modern loft interior or create an atmosphere of subtle luxury. Every table is unique due to solid ash wood legs. The Nova Wood desk is an award winning desk (Red Dot Design Award).",
  category: "Desks",
  price: 540
)
file_1 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598370132/nova_wood_desk_1.webp')
file_2 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598370132/nova_wood_desk_2.webp')
file_3 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598370132/nova_wood_desk_3.webp')
nova_wood_desk.images.attach(io: file_1, filename: 'nova_lamp1.webp', content_type: 'image/webp')
nova_wood_desk.images.attach(io: file_2, filename: 'nova_lamp2.webp', content_type: 'image/webp')
nova_wood_desk.images.attach(io: file_3, filename: 'nova_lamp3.webp', content_type: 'image/webp')
nova_wood_desk.save!


p petite_lamp = Furniture.new(
  name: "Petite Lampe",
  description: "Want to add a splash of colour? Then the Petite Lampe is the perfect detail to add in your home office. This lamp with its adjustable lampshade can be installed practically everywhere; on a bedside table, in a living room, on a desk.",
  category: "Lamps",
  price: 149
)
file_1 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1597941142/dizy_petite_lamp_1.png')
file_2 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598370125/dizy_petite_lamp_2.png')
file_3 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1597941142/dizy_petite_lamp_3.png')
petite_lamp.images.attach(io: file_1, filename: 'lamp1.png', content_type: 'image/png')
petite_lamp.images.attach(io: file_2, filename: 'lamp2.png', content_type: 'image/png')
petite_lamp.images.attach(io: file_3, filename: 'lamp3.png', content_type: 'image/png')
petite_lamp.save!


p lolly_lamp = Furniture.new(
  name: "Lolly Lamp",
  description: "The Lolly Lamp is an elegant source of long-lasting LED light that takes up just enough space on a desk to power people’s productivity. This compact work light meets your needs with its tilting head, charging ports, and touch-sensitive dimming settings—all features that will brighten any workspace.",
  category: "Lamps",
  price: 190
)
file_1 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598370140/lolly_lamp_1.png')
file_2 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598370140/lolly_lamp_2.png')
file_3 = URI.open('https://res.cloudinary.com/dempyzozn/image/upload/v1598370140/lolly_lamp_3.png')
lolly_lamp.images.attach(io: file_1, filename: 'lolly_lamp1.png', content_type: 'image/png')
lolly_lamp.images.attach(io: file_2, filename: 'lolly_lamp2.png', content_type: 'image/png')
lolly_lamp.images.attach(io: file_3, filename: 'lolly_lamp3.png', content_type: 'image/png')
lolly_lamp.save!

