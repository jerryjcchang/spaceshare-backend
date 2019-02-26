require 'bcrypt'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jc = User.create(email: 'jerryjcchang@gmail.com',
                            first_name: 'JC',
                            last_name: 'Chang',
                            company: 'Flatiron School',
                            city: 'Arlington',
                            state: 'VA',
                            phone: "6264008170",
                            password: 'chaos198',
                              )

athena = User.create(email: 'athena.leyun.shi@gmail.com',
                       first_name: 'Athena',
                       last_name: 'Shi',
                       company: 'Carlyle Group',
                       password: 'A7athena',
                     #   password_confirmation: 'A7athena',
                       city: 'Arlington',
                       state: 'VA',
                       phone: "4157285032"
                       )

jonnel = User.create(email: 'jonnel.benjamin@gmail.com',
                      first_name: 'Jonnel',
                      last_name: 'Benjamin',
                      company: 'Flatiron School',
                      password: 'password',
                      city: 'Washington',
                      state: 'DC',
                      phone: "2147098197"
                      )

vlad = User.create(email: '317110@gmail.com',
                   first_name: 'Vlad',
                   last_name: 'Deryuzhenko',  
                   company: 'VladdyDaddy.com',
                   password: 'password',
                   city: 'Washington',
                   state: 'DC',
                   phone: "5555555555"                
                   )

mandy = User.create(email: 'moodymandy@gmail.com',
                    first_name: 'Mandy',
                    last_name: 'Pilaud',
                    company: 'Murder Your Family Inc.',
                    password: 'password',
                    city: 'Arlington',
                    state: 'DC',
                    phone: "3106919764"
                    )

                  
space1 = Space.find_or_create_by(name: "Flatiron School",
                        street_address:"1440 G St NW",
                        city: "Washington",
                        state: "DC",
                        zip: "20005",
                        lat: 38.8982342,
                        long: -77.032672,
                        description: "Coding bootcamp campus with individual workstations, group desks, and conference rooms. Desks have mounted monitors, TV's available upon request.",
                        daily_rate: 40,
                        host_id: 1,
                        img_url: "https://cdn.vox-cdn.com/thumbor/ueWAKRe5lkw2zmigFIt2820BAPs=/0x0:1542x823/1200x800/filters:focal(648x289:894x535)/cdn.vox-cdn.com/uploads/chorus_image/image/58422207/We_Work.0.jpeg"
                        )

space2 = Space.find_or_create_by(name: "WeWork 80M SE",
                                 street_address: "80 M St SE",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20590"
                                 lat: Geocoder.search("80 M St SE, Washington DC").first.coordinates[0],
                                 long: Geocoder.search("80 M St SE, Washington DC").first.coordinates[1],
                                 description: "Holding down three floors of a modern, renovated glass building with professional prowess, our workspace at 80 M SE is the future home for your business. This is our first space in DC south of the Hill, located conveniently in a youthful neighborhood just steps from the Nationals Park. Most members take the Metro to work, hopping off at Navy Yard-Ballpark station to walk a single block to our exposed-brick lobby. If the train isn’t your go-to, there are several bus stops and a Capital Bikeshare available as well. The riverfront park, District Crossfit, and a local trapeze school offer great wellness options to find that work-life balance. Bluejacket, Whaley's, and The Big Stick come in handy for more festive evenings."
                                 daily_rate: 60,
                                 img_url: "https://cdn.wework.com/locations/image/01c703fc-f29c-11e7-a0ec-1202be33576a/20171208_WeWork_80_M_St_-_Common_Areas_-_Work_Nook-1.jpg?w=1440"
                                 )

space3 = Space.find_or_create_by(name: "Eastern Foundry",
                                 street_address: "2011 Crystal Drive",
                                 city: "Washington",
                                 state: "DC",
                                 zip: ""
                                 lat: Geocoder.search("2011 Crystal Drive Arlington, VA").first.coordinates[0],
                                 long: Geocoder.search("2011 Crystal Drive Arlington, VA").first.coordinates[1],
                                 description: "Eastern Foundry was forged from the belief that innovation can solve our country’s toughest challenges. Yet, the slow and complex federal procurement process prevents game-changing ideas, products and services from being found and utilized.

                                 Eastern Foundry has created a government innovation marketplace to solve that problem. We provide the workspace, services, community and training to help our members succeed in government procurement."
                                 daily_rate: 50,
                                 img_url: "https://www.eastern-foundry.com/wp-content/uploads/2018/03/Rosslyn-ConferenceRoom-1280x720.jpg"
                                 )

space4 = Space.find_or_create_by(name: "MakeOffices at K Street",
                                 street_address: "1015 15th St NW",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20005"
                                 lat: Geocoder.search("1015 15th Street Northwest, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("1015 15th Street Northwest, Washington, United States").first.coordinates[1],
                                 description: "MakeOffices creates productive, collaborative coworking communities where the workplace meets the sharing economy. We understand what it is like to be a startup with a tight budget, or a passionate entrepreneur leading a small business with no interest in committing to a multi-year lease in a traditional corporate environment. Home to amazing small businesses, entrepreneurs, and innovation-focused teams from Fortune 500s, our communities are designed for companies looking for simple workplace solutions to get serious work done. MakeOffices operates several locations across Chicago, Philadelphia, and the Washington, DC metro area."
                                 daily_rate: 50,
                                 img_url: "https://makeoffices.com/wp-content/uploads/2017/10/IMG_0247_LoRes-min-1024x683.jpg"
                                 )

space5 = Space.find_or_create_by(name: "Creative Colony Spaces",
                                 street_address: "8121 Georgia Avenue",
                                 city: "Silver Spring",
                                 state: "MD",
                                 zip: "20910"
                                 lat: Geocoder.search("8121 Georgia Avenue, Silver Spring, United States").first.coordinates[0],
                                 long: Geocoder.search("8121 Georgia Avenue, Silver Spring, United States").first.coordinates[1],
                                 description: "Bringing vibrant and creative professional independents together within a supportive shared work environment, Creative Colony offers a solid platform for developing your business alongside like minded individuals.

                                 With flexible monthly memberships available, you get to pick whichever suits you best. All memberships include onsite facilities such as access to work desks and collaborative tables, conference rooms, a full kitchen with coffee, tea and water, high speed internet, plus office supplies and equipment."
                                 daily_rate: 50,
                                 img_url: "https://coworker.imgix.net/photos/united-states/maryland/silver-spring/creative-colony-spaces/7.jpg"
                                 )

space6 = Space.find_or_create_by(name: "Impact Hub DC",
                                 street_address: "419 7th Street NW, Suite 300",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20004"
                                 lat: Geocoder.search("419 7th Street NW, suite 300, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("419 7th Street NW, suite 300, Washington, United States").first.coordinates[1],
                                 description: "Impact Hub DC is part of Mission:Hub’s global community, taking collaborative action for a better world. Through 4 Impact Hub locations (San Francisco, Berkeley, DC, & NYC) as well as the flagship SOCAP (Social Capital Markets) conference, and year round community events, Mission:Hub connects leading innovators with the resources they need to accelerate positive global impact. Innovators access resources - including community, programming, space, capital & more. Impact Hub DC strives to be an inspiring space, with meaningful content and a vibrant global community of people - to also include an amazing team of work traders."
                                 daily_rate: 45,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/impact-hub-dc/main.JPG"
                                 )

space7 = Space.find_or_create_by(name: "CoworkCafe",
                                 street_address: "2719 Wilson Blvd,",
                                 city: "Arlington",
                                 state: "VA",
                                 zip: "22201"
                                 lat: Geocoder.search("2719 Wilson Blvd, Arlington, United States").first.coordinates[0],
                                 long: Geocoder.search("2719 Wilson Blvd, Arlington, United States").first.coordinates[1],
                                 description: "CoworkCafe is a productive workspace in the casual setting of a local coffee shop. Located in Clarendon, we're around the corner from your house, and the perfect alternative to your busy, distracting home office. 
                                 
                                 Come work from a standing desk, reclining chair, or comfortable couch. Anywhere you land will be close to one of many outlets, and pleasantly illuminated by natural light. Enjoy a custom beverage, house-made gelato, or a sandwich or pastry, brought to you where you work."
                                 daily_rate: 40,
                                 img_url: "https://coworker.imgix.net/photos/united-states/virginia/arlington/coworkcafe/main.jpeg"
                                 )

space8 = Space.find_or_create_by(name: "Novel Coworking Old Town",
                                 street_address: "950 North Washington Street",
                                 city: "Alexandria",
                                 state: "VA",
                                 zip: ""
                                 lat: Geocoder.search("950 North Washington Street, Alexandria, United States").first.coordinates[0],
                                 long: Geocoder.search("950 North Washington Street, Alexandria, United States").first.coordinates[1],
                                 description: "Whether you regularly meet clients in the Capitol or stay local and commute by bike, Level’s Alexandria space provides easy access for everyone in the office. The Braddock Road Metro Station (Yellow and Blue Lines) is only a short walk away, while the building’s direct access to the George Washington Memorial Parkway puts D.C. at just under a 20-minute commute. Plus, our covered parking garage offers the convenience of parking on site!"
                                 daily_rate: 40,
                                 img_url: "https://coworker.imgix.net/photos/united-states/virginia/alexandria/novel-coworking-old-town/main.jpg"
                                 )

space9 = Space.find_or_create_by(name: "The Yard: Eastern Market",
                                 street_address: "700 Pennsylvania Avenue Southeast",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20003"
                                 lat: Geocoder.search("700 Pennsylvania Avenue Southeast, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("700 Pennsylvania Avenue Southeast, Washington, United States").first.coordinates[1],
                                 description: "Combining private and shared workspaces with stunning lounges, conference rooms and common areas to inspire collaborative conversation. With beautiful views of the city and close proximity to prime retail, restaurants and the nation’s capital, this location will cultivate a productive, inspiring work environment for D.C.’s entrepreneurial community."
                                 daily_rate: 35,
                                 img_url: "https://coworker.imgix.net/photos/united-states/new-york/washington/the-yard-eastern-market/3.jpg"
                                 )

space10 = Space.find_or_create_by(name: "Business Gate",
                                 street_address: " 9200 Edmonston Road, suite 300,",
                                 city: "Greenbelt",
                                 state: "MD",
                                 zip: "20770"
                                 lat: Geocoder.search("9200 Edmonston Road, suite 300, Greenbelt, United States").first.coordinates[0],
                                 long: Geocoder.search("9200 Edmonston Road, suite 300, Greenbelt, United States").first.coordinates[1],
                                 description: "Business Gate offers a calm atmosphere, fully equipped for efficiency and comfort of our start-ups, creatives, professionals, students, small enterprises, and more. Our co-working space will provide you with networking opportunities through sharing spaces and ideas. We offer you and your team a flexible space with little obligations and more time to focus on business. Our location is a Prime HUB Zone with quick access to the Capital Beltway"
                                 daily_rate: 20,
                                 img_url: "https://coworker.imgix.net/photos/united-states/maryland/greenbelt/business-gate/17-1540329720.jpg"
                                 )

space11 = Space.find_or_create_by(name: "Cove",
                                 street_address: "1624 14th Street NW",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20009"
                                 lat: Geocoder.search("1624 14th Street NW, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("1624 14th Street NW, Washington, United States").first.coordinates[1],
                                 description: "No one likes to work, but everyone likes to be productive. cove provides a place in your neighborhood to get things done, alongside others doing just the same. If you ever find yourself trying to work out of the lonely living room, noisy coffee shop, or boring office, cove is for you.
                                 
                                 Our convenient locations have everything you need—unlimited coffee, fast wifi, color printing—but it’s the small things that make the difference: accessible outlets, call boxes, and a diverse community focused on being productive."
                                 daily_rate: 50,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/cove/main-1498292675.jpg"
                                 )

space12 = Space.find_or_create_by(name: "District Offices - Capitol Hill",
                                 street_address: "10 G Street Northeast, Suite 600",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20002"
                                 lat: Geocoder.search("10 G Street Northeast, Suite 600, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("10 G Street Northeast, Suite 600, Washington, United States").first.coordinates[1],
                                 description: ""
                                 daily_rate: 20,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/district-offices-capitol-hill/main.jpg"
                                 )

space13 = Space.find_or_create_by(name: "1776",
                                 street_address: "1133 15th St NW",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20005"
                                 lat: Geocoder.search("1133 15th St NW, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("1133 15th St NW, Washington, United States").first.coordinates[1],
                                 description: "A shared workspace that also acts as a global incubator and seed fund by providing the essentials for tackling challenges in various areas, 1776 enables startups and professionals alike to gather towards positive impact.
                                 
                                 Workspace benefits include 24/7 campus access, a modern interior with equipped high speed internet, a lounge and chill out area plus exclusive access to resources and networks."
                                 daily_rate: 50,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/1776/2.jpg"
                                 )

space14 = Space.find_or_create_by(name: "BUREAU",
                                 street_address: "1800 Wyoming Avenue NW",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20009"
                                 lat: Geocoder.search("1800 Wyoming Avenue NW, Top Floor, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("1800 Wyoming Avenue NW, Top Floor, Washington, United States").first.coordinates[1],
                                 description: "Designed with entrepreneurs in mind, BUREAU serves as a sanctuary for women to network, collaborate, and share ideas. This designer space is also available for private events, and hosts monthly gatherings and WERQshops for members and the community to come together."
                                 daily_rate: 45,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/bureau/main.jpg"
                                 )

space15 = Space.find_or_create_by(name: "Mindspace K Street",
                                 street_address: "1301 K Stree",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20005"
                                 lat: Geocoder.search("1301 K Street Northwest, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("1301 K Street Northwest, Washington, United States").first.coordinates[1],
                                 description: "Mindspace is the global coworking provider of beautiful and inspiring private offices and spaces for teams of all sizes. It’s time to expand your mind, network and business, make connections that matter and introduce your team members to an artistically designed workspace that will help them realize their dreams."
                                 daily_rate: 50,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/mindspace-k-street/1-1538901969.jpg"
                                 )

space16 = Space.find_or_create_by(name: "GSD Workclub Alexandria",
                                 street_address: "2312 Mount Vernon Avenue,",
                                 city: "Alexandria",
                                 state: "VA",
                                 zip: "22301"
                                 lat: Geocoder.search("2312 Mount Vernon Avenue, Alexandria, United States").first.coordinates[0],
                                 long: Geocoder.search("2312 Mount Vernon Avenue, Alexandria, United States").first.coordinates[1],
                                 description: "GSD is a coworking club in the heart of Alexandria, VA. We offer a progressive community along with free wi-fi, printing & faxing, cable, coffee, and snacks. GSD is located in the Del Ray neighborhood on a block with restaurants, boutique shops, and a UPS store. We are within 2 blocks of a pharmacy, convenience store, dry cleaning, post office, banks, boutique shops, bars, and salons."
                                 daily_rate: 25,
                                 img_url: "https://coworker.imgix.net/photos/united-states/virginia/alexandria/gsd-workclub/4.png"
                                 )

space17 = Space.find_or_create_by(name: "Refraction",
                                 street_address: "11911 Freedom Dr, Tower 1, 8th Floor",
                                 city: "Reston",
                                 state: "VA",
                                 zip: "20190"
                                 lat: Geocoder.search("11911 Freedom Dr, Tower 1, 8th Floor, Reston, United States").first.coordinates[0],
                                 long: Geocoder.search("11911 Freedom Dr, Tower 1, 8th Floor, Reston, United States").first.coordinates[1],
                                 description: "Refraction is a unique and dynamic coworking community serving the business leaders, creatives, and philanthropists of Northern Virginia. Refraction is a curated hub of creativity, collaboration, and innovation that helps businesses build more dynamic teams and grow their company. Collectively we experiment with ground breaking research and cultural trends to set new standards in business excellence and make the future of work an everyday reality."
                                 daily_rate: 40,
                                 img_url: "https://coworker.imgix.net/photos/united-states/virginia/reston/refraction/3.jpg"
                                 )

space18 = Space.find_or_create_by(name: "In3",
                                 street_address: "2301 Georgia Avenue NW",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20001"
                                 lat: Geocoder.search("2301 Georgia Avenue Northwest, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("2301 Georgia Avenue Northwest, Washington, United States").first.coordinates[1],
                                 description: "In3 is the District of Columbia’s first community space focused on inclusion, innovation and incubation. The incubator is committed to creating a collaborative environment where under-resourced members have access to the space and services needed to build or grow a successful business."
                                 daily_rate: 50,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/in3/5.jpg"
                                 )

space19 = Space.find_or_create_by(name: "Nonprofit Village",
                                 street_address: "12320 Parklawn Drive",
                                 city: "Rockville",
                                 state: "MD",
                                 zip: "20852"
                                 lat: Geocoder.search("12320 Parklawn Drive, Rockville, United States").first.coordinates[0],
                                 long: Geocoder.search("12320 Parklawn Drive, Rockville, United States").first.coordinates[1],
                                 description: "Nonprofit Village is a shared space for nonprofit organizations. We have 31 full service members that rent space, and more that use the site as a virtual address for mail. We offer 2 meetings rooms that accommodate 15-20 people and 1 meeting room that accommodates 3-4 people. We are open from 9 am - 5 pm Monday through Friday, and can book affordable meeting rooms for evening use. We accept all major credit cards."
                                 daily_rate: 30,
                                 img_url: "https://coworker.imgix.net/photos/united-states/maryland/rockville/nonprofit-village/main.JPG"
                                 )

space20 = Space.find_or_create_by(name: "Spaces NoMa",
                                 street_address: "1140 3rd Street NE",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20002"
                                 lat: Geocoder.search("1140 3rd Street Northeast, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("1140 3rd Street Northeast, Washington, United States").first.coordinates[1],
                                 description: "Spaces NoMa is situated in the rapidly developing NoMa neighborhood of D.C. This flourishing neighbourhood offers spacious, walkable streets and plenty of opportunities to immerse yourself in the fresh, urban scene. Union Station is less than ten minutes away and New York Avenue is just three blocks from the centre. You’ll be moments away from the U.S. Capitol and Supreme Court as well as other government offices, museums, amenities and more."
                                 daily_rate: 29,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/spaces-noma/main.jpg"
                                 )

Booking.find_or_create_by(guest_id: 2,
                          space_id: 1,
                          start_time: DateTime.parse('20 Feb 2019 3:30 pm EST'),
                          end_time: DateTime.parse('20 Feb 2019 5:30 pm EST')
                         )
                
Booking.find_or_create_by(guest_id: 1,
                          space_id: 1,
                          start_time: DateTime.parse('22 Feb 2019 8:30 am EST'),
                          end_time: DateTime.parse('22 Feb 2019 5:30 pm EST')
                         )

features = ["single desk", 
            "group desk", 
            "conference room", 
            "wifi", 
            "coffee machine",
            "monitors"
            ]

features.each{|feature| Feature.find_or_create_by(name: feature)}

single = Feature.find(1)
group = Feature.find(2)
conference = Feature.find(3)
wifi = Feature.find(4)
coffee = Feature.find(5)
monitor = Feature.find(6)
