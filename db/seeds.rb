# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Home.destroy_all
Review.destroy_all

#Seed Users
demo = User.create(email: "demo@demo.com", password: "123123", first_name: "Demo", last_name: "User")
u1 = User.create(email: "brianjeong55@gmail.com", password: "123123", first_name: "Brian", last_name: "Jeong")
u2 = User.create(email: "angjeong@gmail.com", password: "123123", first_name: "Angelina", last_name: "Jeong")
u3 = User.create(email: "tsj11@gmail.com", password: "123123", first_name: "Terry", last_name: "Jeong")
u4 = User.create(email: "todd@gmail.com", password: "123123", first_name: "Todd", last_name: "Jeong")
u5 = User.create(email: "michael@gmail.com", password: "123123", first_name: "Michael", last_name: "Jeong")
u6 = User.create(email: "sarah@gmail.com", password: "123123", first_name: "Sarah", last_name: "Jeong")
u7 = User.create(email: "mike@gmail.com", password: "123123", first_name: "Mike", last_name: "Jeong")
u8 = User.create(email: "julie@gmail.com", password: "123123", first_name: "Julie", last_name: "Jeong")
u9 = User.create(email: "ken@gmail.com", password: "123123", first_name: "Ken", last_name: "Jeong")
u10 = User.create(email: "ralph@gmail.com", password: "123123", first_name: "Ralph", last_name: "Jeong")

#Seed Locations
h1 = Home.create(
    host_id: u1.id,
    name: "Beautiful vista in Financial District",
    city: "San Francisco",
    max_guests: 6,
    num_rooms: 3,
    num_beds: 3,
    num_baths: 4,
    description: "The guest apartment has its own entrance located on the ground level of our home. The private apartment is 720 sq ft and has 8 ft ceilings. The living room and kitchen are new as of 2013 and the bath and the two bedrooms are remodeled.",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.799021,
    longitude: -122.40149,
    price: 70.00
)

h2 = Home.create(
    host_id: u2.id,
    name: "AVA Nob Hill",
    city: "San Francisco",
    max_guests: 6,
    num_rooms: 3,
    num_beds: 3,
    num_baths: 4,
    description: "Private entry, sidewalk-level suite of living room, kitchen, bedroom and bath with artful touches in 1911 Edwardian. Close to beaches, GGate Park, GGate Bridge, groceries, cafes, restaurants on city-wide trolly line for memorable vacation/business/retreat. Easy drive to Marin.",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.788252,
    longitude: -122.416318,
    price: 70.00
)

h3 = Home.create(
    host_id: u3.id,
    name: "Burma Love",
    city: "San Francisco",
    max_guests: 6,
    num_rooms: 3,
    num_beds: 3,
    num_baths: 4,
    description: "My sunny, 3-story Victorian house is in tranquil Noe Valley, 1 mile from the heart of Mission District, with easy access by streetcar to downtown. Many restaurants are within easy walking distance, and weather is sunnier than much of SF! Your light-filled bedroom has a queen-sized bed and access to a bathroom with shower and tub (shared with other guests). Free street parking available with some restrictions.",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.76962,
    longitude: -122.42205,
    price: 70.00
)

h4 = Home.create(
    host_id: u4.id,
    name: "Studio with Awesome View",
    city: "San Francisco",
    max_guests: 6,
    num_rooms: 3,
    num_beds: 3,
    num_baths: 4,
    description: "Come share our Cozy Artsy home in SF's Portola District. One bedroom available in a home with our family and two cats. We live in home. 2 min walk to bus & 15 min ride to subway. 15 drive downtown or 45 min on public transit. Walk out front door & head out on a hike in Maclaren Park.... come enjoy a quiet get away from the hubbub of the City... we are not super close to tourist area but it's a sweet neighborhood. Lots of street parking!",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.807175,
    longitude: -122.42017,
    price: 100.00
)

h5 = Home.create(
    host_id: u1.id,
    name: "Spacious condo in Noe Valley",
    city: "San Francisco",
    max_guests: 4,
    num_rooms: 2,
    num_beds: 3,
    num_baths: 4,
    description: "Immaculate, spacious lower level private room with private entrance and adjacent parking. Comfortable queen bed and attached spa like bath with tub/shower. Studio like feel with 40'' TV, microwave and refrigerator. Use of backyard, washer & dryer.",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.751677,
    longitude: -122.432468,
    price: 120.00
)

h6 = Home.create(
    host_id: u2.id,
    name: "Shady, Dangerous Patio in SoMa",
    city: "San Francisco",
    max_guests: 6,
    num_rooms: 3,
    num_beds: 3,
    num_baths: 4,
    description: "We are located in the San Francisco neighborhood of Mission Terrace district. Our street is quiet but located next to the main street Mission. If you are coming by public transit, the Balboa Park Bart station is within 1 mile. Or there is a No.14 bus stop right around the corner within 1 min walking, which will lead you to downtown trough Mission St. We can provide a car to pick up or drop off by the SFO at a reasonable price $30",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.779879,
    longitude: -122.405480,
    price: 20.00
)

h7 = Home.create(
    host_id: u3.id,
    name: "Packed, Touristy Apartment in Russian Hill",
    city: "San Francisco",
    max_guests: 6,
    num_rooms: 3,
    num_beds: 3,
    num_baths: 4,
    description: "This is a very very small room in a historic Victorian house with a Twin size bed 2 blocks from the famous Haight and Ashbury cross streets. Accommodates one person only. Twin size bed with a baseboard heater and high speed internet",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.801911,
    longitude: -122.418704,
    price: 100.00
)

h8 = Home.create(
    host_id: u5.id,
    name: "Grand and Cozy 1920's SF Studio",
    city: "San Francisco",
    max_guests: 4,
    num_rooms: 1,
    num_beds: 2,
    num_baths: 1,
    description: "Come enjoy our large studio in San Francisco's charming and convenient Bernal Heights! You'll enjoy your own cozy and private lodging with a romantic gas fireplace, wood and stone floors and artistic decor. You will be close to world class views of San Francisco and it's beautiful bay. Bus lines are close by and and parking is very easy!",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.803908,
    longitude: -122.413999,
    price: 220.00
)

h9 = Home.create(
    host_id: u6.id,
    name: "Garden Retreat steps from Haight St",
    city: "San Francisco",
    max_guests: 3,
    num_rooms: 1,
    num_beds: 2,
    num_baths: 1,
    description: "One bedroom sanctuary with a beautiful garden view and cozy fireplace. Comes with it's own entrance just steps from bus lines, train and all that Haight Street has to offer. Complete privacy with a separate bedroom, bathroom, and breakfast bar.",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.793608,
    longitude: -122.419012,
    price: 90.00
)

h10 = Home.create(
    host_id: u7.id,
    name: "Private Upper Unit with View",
    city: "San Francisco",
    max_guests: 4,
    num_rooms: 1,
    num_beds: 2,
    num_baths: 1,
    description: "Newly remodeled 1 BR/1 BA, 600 sq ft private unit w separate entrance. The only living space on top floor. Great views, wireless, TV w local broadcast, minifridge, microwave, portable a/c unit, Keurig coffee maker, private patio, 2 queen size beds, and a couch that folds down into a futon.",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.786306,
    longitude: -122.389646,
    price: 150.00
)

h11 = Home.create(
    host_id: u8.id,
    name: "Airy, Modern Studio in Central San Francisco",
    city: "San Francisco",
    max_guests: 3,
    num_rooms: 2,
    num_beds: 3,
    num_baths: 1,
    description: "Available starting Aug 20th. 30 day min. Parking space fits compact car only. Whip up a tasty brunch at the tidy, fitted kitchen in this modern studio. Expansive windows grace the stylish, neatly arranged layout with plentiful light.",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.782005,
    longitude: -122.452230,
    price: 100.00
)

h12 = Home.create(
    host_id: u9.id,
    name: "Charming Studio In-Law with Kitchen and Deck",
    city: "San Francisco",
    max_guests: 2,
    num_rooms: 1,
    num_beds: 1,
    num_baths: 1,
    description: "Come enjoy our comfortable, private, light-filled studio in-law. Cook light meals in our fully-stocked kitchenette (microwave, mini-fridge, sink and stove-top--pots/pans/dishes all included), a full bathroom with tub, wi-fi and cable TV and Netflix (HBO/Roku). Enjoy hill views from the front deck. Stay in a quiet and safe neighborhood in the woodsy hills of Oakland. Close to the Warriors, A's, Oakland Airport, East Bay hiking and all major freeways, and BART. Only 15 miles to downtown SF.",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.754085,
    longitude: -122.442750,
    price: 70.00
)

h13 = Home.create(
    host_id: u10.id,
    name: "Garden Studio With Private Entrance Near GG Park",
    city: "San Francisco",
    max_guests: 3,
    num_rooms: 1,
    num_beds: 1,
    num_baths: 1,
    description: "There is plenty of space to unwind in this studio apartment, which has a private entrance, small kitchen, new shower, lounge area and garden access. The studio is located on the ground floor of our home with a view of the garden. It is a block from Golden Gate Park in the Inner Richmond District. Walk to music festivals, museums, gardens, hiking trails, USF, Presidio, Haight/Ashbury. Easy commute by public transportation or by Uber/Lyft/taxi to downtown and Union Square.",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.777010,
    longitude: -122.471080,
    price: 135.00
)

h14 = Home.create(
    host_id: u9.id,
    name: "Stylish, cozy, private studio in Bernal Heights",
    city: "San Francisco",
    max_guests: 2,
    num_rooms: 1,
    num_beds: 1,
    num_baths: 1,
    description: "Our downstairs studio is like a hotel room with its own entrance, a kitchenette, bathroom and a comfy bed. Our home is close to public transportation and lots of shops, restaurants and parks. It is near the lively Mission district and quaint Cortland Ave. There is easy access to 80, 101 and 280 if you're driving south or east. Its best for 1 or 2 people, but might be able to accommodate a couple with 1 child. A small dog would be okay, but there is no outdoor area.",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.765576,
    longitude: -122.413365,
    price: 55.00
)

h15 = Home.create(
    host_id: u8.id,
    name: "Peaceful Quiet Cottage Apartment",
    city: "San Francisco",
    max_guests: 2,
    num_rooms: 2,
    num_beds: 2,
    num_baths: 1,
    description: "This upstairs apartment is very private and has really great light exposure and views. It's spacious and clean and we hope you will enjoy it as much as our past guests. The sleeping space is in a cozy 'alcove' with low sloping ceilings",
    house_rules: "No smoking please",
    cancellation_policy: "Full refund within 24 hours of booking",
    latitude: 37.774004,
    longitude: -122.414286,
    price: 85.00
)

#Seed Reviews
r1 = Review.create(
    home_id: h1.id,
    user_id: u1.id,
    rating: 5,
    body: "Wonderful stay at this location. I wish every Airbnb was like this one. Very clean, short car ride to the city area and had everything you may need. Host was very nice and I would love to stay here again."
)

r2 = Review.create(
    home_id: h2.id,
    user_id: u2.id,
    rating: 5,
    body: "Awesome!! We loved our stay here. Would definitely book again. Although parking can be a bit difficult, the local park offered perfect parking for us just 5 blocks away! We used public transit the whole trip, which was always on time and super helpful!"
)

r3 = Review.create(
    home_id: h3.id,
    user_id: u3.id,
    rating: 5,
    body: "Cute apartment with stylish touches, generously stocked pantry, nice neighborhood with close proximity to grocery, restaurants and BART."
)

r4 = Review.create(
    home_id: h4.id,
    user_id: u4.id,
    rating: 5,
    body: "A light-filled cocoon in a mixed, friendly residential neighborhood. Great deck. Close to Bart and transit connections. Small bed if you're a tall couple (I was fine on my own). Quiet, well equipped and good value."
)

r5 = Review.create(
    home_id: h5.id,
    user_id: u5.id,
    rating: 5,
    body: "Private, clean, quiet, comfortable, spacious, fantastic location right near public transit - it was our first airbnb experience and it was everything we were looking for."
)

r6 = Review.create(
    home_id: h6.id,
    user_id: u6.id,
    rating: 5,
    body: "It was my first time in San Francisco! The location was perfect, and although I read parking could be hard to find my group and I were lucky enough to find parking just around the corner!"
)

r7 = Review.create(
    home_id: h7.id,
    user_id: u7.id,
    rating: 5,
    body: "The place was a great value! The checkin was a breeze and I felt safe with the flood lights coming on when returning to her place at night. Host was pleasant and very easy to communicate with. Location is about 20-25 minutes from San Fran touristy sites."
)

r8 = Review.create(
    home_id: h8.id,
    user_id: u8.id,
    rating: 5,
    body: "This place is much prettier then the pictures and they are great to begin with. The deck is amazing and the couple is super great, accommodating and helpful with local tips. I would definitely stay here again and recommend others to as well."
)

r9 = Review.create(
    home_id: h9.id,
    user_id: u9.id,
    rating: 5,
    body: "The studio is located in a central area of SF that is within 15 minute walk to the famous Castro district. The property itself is also located in a secluded and peaceful neighborhood. The surrounding hills also make for some great hiking experiences that offer great views"
)

r10 = Review.create(
    home_id: h10.id,
    user_id: u10.id,
    rating: 5,
    body: "Such a great spot with a stellar location! The room is spacious and so is the private bath. It was also incredibly helpful to have the option to use the washer and dryer to clean our clothes after the first leg of our trip. "
)

r11 = Review.create(
    home_id: h11.id,
    user_id: u1.id,
    rating: 5,
    body: "Elmer's apartment is in a great location between many fun and exciting neighborhoods with everything in walking distance. He kept so many amenities for guests in the bathroom and kitchen, as well as local tips and maps for visiting San Francisco. "
)

r12 = Review.create(
    home_id: h12.id,
    user_id: u2.id,
    rating: 5,
    body: "Great place and location in SF. Great amenities and very nice styled apartment. Host is very gracious and prompt reply to communications. Wish I could have stayed longer."
)

r13 = Review.create(
    home_id: h13.id,
    user_id: u3.id,
    rating: 5,
    body: "Really nice stay! Host made the set up feel like we were at home and was very communicative. Out of all of our stays, we have to stay this was the most pleasant! He had a very cute dog too who is so cute!"
)

r14 = Review.create(
    home_id: h14.id,
    user_id: u4.id,
    rating: 5,
    body: "This was the best Air BnB I’ve ever stayed in! Kepa’s beautiful cabana and garden was the perfect place for us to stay on our mother/daughter trip. The neighborhood was incredibly safe and always warmer and sunnier than the rest of the city."
)

r15 = Review.create(
    home_id: h15.id,
    user_id: u5.id,
    rating: 5,
    body: "We loved our stay in this cabana! The space is bright & beautiful, and the garden is the peaceful resort-like setting that was promised! We look forward to staying here again."
)

r16 = Review.create(
    home_id: h2.id,
    user_id: u3.id,
    rating: 5,
    body: "Wonderful stay at this location. I wish every Airbnb was like this one. Very clean, short car ride to the city area and had everything you may need. Host was very nice and I would love to stay here again."
)

r17 = Review.create(
    home_id: h3.id,
    user_id: u4.id,
    rating: 5,
    body: "Awesome!! We loved our stay here. Would definitely book again. Although parking can be a bit difficult, the local park offered perfect parking for us just 5 blocks away! We used public transit the whole trip, which was always on time and super helpful!"
)

r18 = Review.create(
    home_id: h4.id,
    user_id: u5.id,
    rating: 5,
    body: "Cute apartment with stylish touches, generously stocked pantry, nice neighborhood with close proximity to grocery, restaurants and BART."
)

r19 = Review.create(
    home_id: h5.id,
    user_id: u6.id,
    rating: 5,
    body: "A light-filled cocoon in a mixed, friendly residential neighborhood. Great deck. Close to Bart and transit connections. Small bed if you're a tall couple (I was fine on my own). Quiet, well equipped and good value."
)

r20 = Review.create(
    home_id: h6.id,
    user_id: u7.id,
    rating: 5,
    body: "Private, clean, quiet, comfortable, spacious, fantastic location right near public transit - it was our first airbnb experience and it was everything we were looking for."
)

r21 = Review.create(
    home_id: h7.id,
    user_id: u8.id,
    rating: 5,
    body: "It was my first time in San Francisco! The location was perfect, and although I read parking could be hard to find my group and I were lucky enough to find parking just around the corner!"
)

r22 = Review.create(
    home_id: h8.id,
    user_id: u9.id,
    rating: 5,
    body: "The place was a great value! The checkin was a breeze and I felt safe with the flood lights coming on when returning to her place at night. Host was pleasant and very easy to communicate with. Location is about 20-25 minutes from San Fran touristy sites."
)

r23 = Review.create(
    home_id: h9.id,
    user_id: u10.id,
    rating: 5,
    body: "This place is much prettier then the pictures and they are great to begin with. The deck is amazing and the couple is super great, accommodating and helpful with local tips. I would definitely stay here again and recommend others to as well."
)

r24 = Review.create(
    home_id: h10.id,
    user_id: u1.id,
    rating: 5,
    body: "The studio is located in a central area of SF that is within 15 minute walk to the famous Castro district. The property itself is also located in a secluded and peaceful neighborhood. The surrounding hills also make for some great hiking experiences that offer great views"
)

r25 = Review.create(
    home_id: h11.id,
    user_id: u2.id,
    rating: 5,
    body: "Such a great spot with a stellar location! The room is spacious and so is the private bath. It was also incredibly helpful to have the option to use the washer and dryer to clean our clothes after the first leg of our trip. "
)

r26 = Review.create(
    home_id: h12.id,
    user_id: u3.id,
    rating: 5,
    body: "Elmer's apartment is in a great location between many fun and exciting neighborhoods with everything in walking distance. He kept so many amenities for guests in the bathroom and kitchen, as well as local tips and maps for visiting San Francisco. "
)

r27 = Review.create(
    home_id: h13.id,
    user_id: u4.id,
    rating: 5,
    body: "Great place and location in SF. Great amenities and very nice styled apartment. Host is very gracious and prompt reply to communications. Wish I could have stayed longer."
)

r28 = Review.create(
    home_id: h14.id,
    user_id: u5.id,
    rating: 5,
    body: "Really nice stay! Host made the set up feel like we were at home and was very communicative. Out of all of our stays, we have to stay this was the most pleasant! He had a very cute dog too who is so cute!"
)

r29 = Review.create(
    home_id: h15.id,
    user_id: u6.id,
    rating: 5,
    body: "This was the best Air BnB I’ve ever stayed in! Kepa’s beautiful cabana and garden was the perfect place for us to stay on our mother/daughter trip. The neighborhood was incredibly safe and always warmer and sunnier than the rest of the city."
)

r30 = Review.create(
    home_id: h1.id,
    user_id: u7.id,
    rating: 5,
    body: "We loved our stay in this cabana! The space is bright & beautiful, and the garden is the peaceful resort-like setting that was promised! We look forward to staying here again."
)

#Home Photo Seed
f1 = File.open("app/assets/images/apartment-architecture-armchair-271805.jpg")
h1.photo.attach(io: f1, filename: "d2a84479_original.jpg")

f2 = File.open("app/assets/images/apartment-architecture-art-276724.jpg")
h2.photo.attach(io: f2, filename: "apartment.jpg")

f3 = File.open("app/assets/images/apartment-architecture-carpet-584399.jpg")
h3.photo.attach(io: f3, filename: "architecture-armchair-271805.jpg")

f4 = File.open("app/assets/images/apartment-art-chair-1027512.jpg")
h4.photo.attach(io: f4, filename: "apartment-architecture-art-276724.jpg")

f5 = File.open("app/assets/images/apartment-beach-bed-271643.jpg")
h5.photo.attach(io: f5, filename: "apartment-architecture-carpet-584399.jpg")

f6 = File.open("app/assets/images/apartment-bed-bedroom-271624.jpg")
h6.photo.attach(io: f6, filename: "apartment-art-chair-1027512.jpg")

f7 = File.open("app/assets/images/apartment-bedroom-ceiling-1082355.jpg")
h7.photo.attach(io: f7, filename: "apartment-beach-bed-271643.jpg")

f8 = File.open("app/assets/images/apartment-comfort-contemporary-1234462.jpg")
h8.photo.attach(io: f8, filename: "apartment-bed-bedroom-271624.jpg")

f9 = File.open("app/assets/images/apartment-condo-condominium-275484.jpg")
h9.photo.attach(io: f9, filename: "apartment-bedroom-ceiling-1082355.jpg")

f10 = File.open("app/assets/images/apartment.jpg")
h10.photo.attach(io: f10, filename: "apartment-comfort-contemporary-1234462.jpg")

f11 = File.open("app/assets/images/architecture-cabinets-carpet-245208.jpg")
h11.photo.attach(io: f11, filename: "apartment-condo-condominium-275484.jpg")

f12 = File.open("app/assets/images/bags-books-design-683929.jpg")
h12.photo.attach(io: f12, filename: "architecture-cabinets-carpet-245208.jpg")

f13 = File.open("app/assets/images/bed-bedroom-clean-775219.jpg")
h13.photo.attach(io: f13, filename: "bags-books-design-683929.jpg")

f14 = File.open("app/assets/images/bed-bedroom-contemporary-1267438.jpg")
h14.photo.attach(io: f14, filename: "bed-bedroom-clean-775219.jpg")

f15 = File.open("app/assets/images/d2a84479_original.jpg")
h15.photo.attach(io: f15, filename: "bed-bedroom-contemporary-1267438.jpg")

#User Photo Seed

