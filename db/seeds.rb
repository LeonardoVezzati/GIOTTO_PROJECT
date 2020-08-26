# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Furniture.destroy_all



#team = Team.create(
#  company: "Giotto",
#  rental_period: 9,
#  budget: 600,
#)





rookie_chair = Furniture.create(
  name: "Rookie",
  description: "Rookie is a small, agile and unconventionally simple chair. It provides a high level of immediate comfort with a minimal number of adjustments. Both the seat and backrest of Rookie are height-adjustable. In addition to these classic functions of a task chair, other ergonomic features are directly incorporated into Rookie's structural design: the backrest flexes slightly when pressure is applied, and the front edge of the seat is unusually pliant.",
  category: "Chairs",
  photo: 'rookie_chair_1',
  price: 399,
)

se_motion_chair = Furniture.create(
  name: "Se:Motion",
  description: "Whether in black or light grey, se:motion emits a sense of dynamic lightness. Moreover, the style is far more than a mere design statement. The perforated backrest ensures elasticity and maximum sitting comfort. The same applies for the ideally positioned lumbar curve and the ergonomically designed seat with slim edges – the impressive looking design ensures both a good posture and mobility.",
  category: "Chairs",
  photo: 'se_motion_chair_1',
  price: 345,
)

d1_chair = Furniture.create(
  name: "D1",
  description: "The D1 office chair unites an aesthetic design, innovative materials and dynamic sitting characteristics. Thanks to the construction of the steel tube frame with mesh, the seat adjusts perfectly to the sitting position and stimulates the user to sit actively and more dynamically. The D1 is an award winning office chair (Red Dot Award, German Innovation Award & German Design Award Winner).",
  category: "Chairs",
  photo: 'd1_chair_1',
  price: 779,
)

nova_a_desk = Furniture.create(
  name: "Nova A",
  description: "The Nova A desk is a modern classic. The universal design and the functional desking system allow to fit into every sort of interior. A-shaped legs are sure to add subtle look and elegance to Nova A desks.",
  category: "Desks",
  photo: 'nova_a_desk_1',
  price: 320,
)

nova_wood_desk = Furniture.create(
  name: "Nova Wood",
  description: "The Nova Wood desk will allow you to create a desired style whether you want it to convey a feeling of warmth and cosiness, resemble a modern loft interior or create an atmosphere of subtle luxury. Every table is unique due to solid ash wood legs. The Nova Wood desk is an award winning desk (Red Dot Design Award).",
  category: "Desks",
  photo: 'nova_wood_desk_1',
  price: 540,
)

petite_lamp = Furniture.create(
  name: "Petite Lampe",
  description: "Want to add a splash of colour? Then the Petite Lampe is the perfect detail to add in your home office. This lamp with its adjustable lampshade can be installed practically everywhere; on a bedside table, in a living room, on a desk.",
  category: "Lamps",
  photo: 'dizy_petite_lamp_1',
  price: 149,
)

lolly_lamp = Furniture.create(
  name: "Lolly Lamp",
  description: "The Lolly Lamp is an elegant source of long-lasting LED light that takes up just enough space on a desk to power people’s productivity. This compact work light meets your needs with its tilting head, charging ports, and touch-sensitive dimming settings—all features that will brighten any workspace.",
  category: "Lamps",
  photo: 'lolly_lamp_1',
  price: 190,
)

