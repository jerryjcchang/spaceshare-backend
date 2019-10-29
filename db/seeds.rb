require 'bcrypt'
require 'geocoder'
require 'rest-client'
require 'byebug'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

jc = User.create(email: 'jerryjcchang@gmail.com',
                            first_name: 'JC',
                            last_name: 'Chang',
                            company: 'Flatiron School',
                            city: 'Arlington',
                            state: 'VA',
                            phone: "6264008170",
                            password: 'chaos198',
                            img_url: 'https://i.imgur.com/YeXKWwq.jpg'
                              )

athena = User.create(email: 'athena.leyun.shi@gmail.com',
                       first_name: 'Athena',
                       last_name: 'Shi',
                       company: 'Carlyle Group',
                       password: 'A7athena',
                     #   password_confirmation: 'A7athena',
                       city: 'Arlington',
                       state: 'VA',
                       phone: "4157285032",
                       img_url: "https://i.imgur.com/5jMEXcN.jpg?1"
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

robin = User.create(email: 'robobeans@gmail.com',
                    first_name: 'Robin',
                    last_name: 'Kim',
                    company: 'Flatiron School',
                    password: 'password',
                    city: 'Town',
                    state: 'DE',
                    phone: "5555555555"
                    )
                    byebug

admin = User.create(email: 'admin@spaceshare.com', first_name: "admin", last_name: "admin", company: "Spaceshare", password: "password")
puts "Users created successfully."

space1 = Space.find_or_create_by(name: "Flatiron School",
                        street_address: "1440 G St NW",
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
                                 zip: "20590",
                                 lat: Geocoder.search("80 M St SE, Washington DC").first.coordinates[0],
                                 long: Geocoder.search("80 M St SE, Washington DC").first.coordinates[1],
                                 description: "Holding down three floors of a modern, renovated glass building with professional prowess, our workspace at 80 M SE is the future home for your business. This is our first space in DC south of the Hill, located conveniently in a youthful neighborhood just steps from the Nationals Park. Most members take the Metro to work, hopping off at Navy Yard-Ballpark station to walk a single block to our exposed-brick lobby. If the train isn’t your go-to, there are several bus stops and a Capital Bikeshare available as well. The riverfront park, District Crossfit, and a local trapeze school offer great wellness options to find that work-life balance. Bluejacket, Whaley's, and The Big Stick come in handy for more festive evenings.",
                                 daily_rate: 60,
                                 host_id: 1,
                                 img_url: "https://cdn.wework.com/locations/image/01c703fc-f29c-11e7-a0ec-1202be33576a/20171208_WeWork_80_M_St_-_Common_Areas_-_Work_Nook-1.jpg?w=1440"
                                 )

space3 = Space.find_or_create_by(name: "Eastern Foundry",
                                 street_address: "2011 Crystal Drive",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "22202",
                                 lat: Geocoder.search("2011 Crystal Drive Arlington, VA").first.coordinates[0],
                                 long: Geocoder.search("2011 Crystal Drive Arlington, VA").first.coordinates[1],
                                 description: "Eastern Foundry was forged from the belief that innovation can solve our country’s toughest challenges. Yet, the slow and complex federal procurement process prevents game-changing ideas, products and services from being found and utilized.

                                 Eastern Foundry has created a government innovation marketplace to solve that problem. We provide the workspace, services, community and training to help our members succeed in government procurement.",
                                 daily_rate: 50,
                                 host_id: 1,
                                 img_url: "https://www.eastern-foundry.com/wp-content/uploads/2018/03/Rosslyn-ConferenceRoom-1280x720.jpg"
                                 )

space4 = Space.find_or_create_by(name: "MakeOffices at K Street",
                                 street_address: "1015 15th St NW",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20005",
                                 lat: Geocoder.search("1015 15th Street Northwest, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("1015 15th Street Northwest, Washington, United States").first.coordinates[1],
                                 description: "MakeOffices creates productive, collaborative coworking communities where the workplace meets the sharing economy. We understand what it is like to be a startup with a tight budget, or a passionate entrepreneur leading a small business with no interest in committing to a multi-year lease in a traditional corporate environment. Home to amazing small businesses, entrepreneurs, and innovation-focused teams from Fortune 500s, our communities are designed for companies looking for simple workplace solutions to get serious work done. MakeOffices operates several locations across Chicago, Philadelphia, and the Washington, DC metro area.",
                                 daily_rate: 50,
                                 host_id: 1,
                                 img_url: "https://makeoffices.com/wp-content/uploads/2017/10/IMG_0247_LoRes-min-1024x683.jpg"
                                 )

space5 = Space.find_or_create_by(name: "Creative Colony Spaces",
                                 street_address: "8121 Georgia Avenue",
                                 city: "Silver Spring",
                                 state: "MD",
                                 zip: "20910",
                                 lat: Geocoder.search("8121 Georgia Avenue, Silver Spring, United States").first.coordinates[0],
                                 long: Geocoder.search("8121 Georgia Avenue, Silver Spring, United States").first.coordinates[1],
                                 description: "Bringing vibrant and creative professional independents together within a supportive shared work environment, Creative Colony offers a solid platform for developing your business alongside like minded individuals.

                                 With flexible monthly memberships available, you get to pick whichever suits you best. All memberships include onsite facilities such as access to work desks and collaborative tables, conference rooms, a full kitchen with coffee, tea and water, high speed internet, plus office supplies and equipment.",
                                 daily_rate: 50,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/maryland/silver-spring/creative-colony-spaces/7.jpg"
                                 )

space6 = Space.find_or_create_by(name: "Impact Hub DC",
                                 street_address: "419 7th Street NW, Suite 300",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20004",
                                 lat: Geocoder.search("419 7th Street NW, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("419 7th Street NW, Washington, United States").first.coordinates[1],
                                 description: "Impact Hub DC is part of Mission:Hub’s global community, taking collaborative action for a better world. Through 4 Impact Hub locations (San Francisco, Berkeley, DC, & NYC) as well as the flagship SOCAP (Social Capital Markets) conference, and year round community events, Mission:Hub connects leading innovators with the resources they need to accelerate positive global impact. Innovators access resources - including community, programming, space, capital & more. Impact Hub DC strives to be an inspiring space, with meaningful content and a vibrant global community of people - to also include an amazing team of work traders.",
                                 daily_rate: 45,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/impact-hub-dc/main.JPG"
                                 )

space7 = Space.find_or_create_by(name: "CoworkCafe",
                                 street_address: "2719 Wilson Blvd,",
                                 city: "Arlington",
                                 state: "VA",
                                 zip: "22201",
                                 lat: Geocoder.search("2719 Wilson Blvd, Arlington, United States").first.coordinates[0],
                                 long: Geocoder.search("2719 Wilson Blvd, Arlington, United States").first.coordinates[1],
                                 description: "CoworkCafe is a productive workspace in the casual setting of a local coffee shop. Located in Clarendon, we're around the corner from your house, and the perfect alternative to your busy, distracting home office.

                                 Come work from a standing desk, reclining chair, or comfortable couch. Anywhere you land will be close to one of many outlets, and pleasantly illuminated by natural light. Enjoy a custom beverage, house-made gelato, or a sandwich or pastry, brought to you where you work.",
                                 daily_rate: 40,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/virginia/arlington/coworkcafe/main.jpeg"
                                 )

space8 = Space.find_or_create_by(name: "Novel Coworking Old Town",
                                 street_address: "950 North Washington Street",
                                 city: "Alexandria",
                                 state: "VA",
                                 zip: "22314",
                                 lat: Geocoder.search("950 North Washington Street, Alexandria, United States").first.coordinates[0],
                                 long: Geocoder.search("950 North Washington Street, Alexandria, United States").first.coordinates[1],
                                 description: "Whether you regularly meet clients in the Capitol or stay local and commute by bike, Level’s Alexandria space provides easy access for everyone in the office. The Braddock Road Metro Station (Yellow and Blue Lines) is only a short walk away, while the building’s direct access to the George Washington Memorial Parkway puts D.C. at just under a 20-minute commute. Plus, our covered parking garage offers the convenience of parking on site!",
                                 daily_rate: 40,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/virginia/alexandria/novel-coworking-old-town/main.jpg"
                                 )

space9 = Space.find_or_create_by(name: "The Yard: Eastern Market",
                                 street_address: "700 Pennsylvania Avenue Southeast",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20003",
                                 lat: Geocoder.search("700 Pennsylvania Avenue Southeast, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("700 Pennsylvania Avenue Southeast, Washington, United States").first.coordinates[1],
                                 description: "Combining private and shared workspaces with stunning lounges, conference rooms and common areas to inspire collaborative conversation. With beautiful views of the city and close proximity to prime retail, restaurants and the nation’s capital, this location will cultivate a productive, inspiring work environment for D.C.’s entrepreneurial community.",
                                 daily_rate: 35,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/new-york/washington/the-yard-eastern-market/3.jpg"
                                 )

space10 = Space.find_or_create_by(name: "Business Gate",
                                 street_address: " 9200 Edmonston Road, suite 300,",
                                 city: "Greenbelt",
                                 state: "MD",
                                 zip: "20770",
                                 lat: Geocoder.search("9200 Edmonston Road, Greenbelt, United States").first.coordinates[0],
                                 long: Geocoder.search("9200 Edmonston Road, Greenbelt, United States").first.coordinates[1],
                                 description: "Business Gate offers a calm atmosphere, fully equipped for efficiency and comfort of our start-ups, creatives, professionals, students, small enterprises, and more. Our co-working space will provide you with networking opportunities through sharing spaces and ideas. We offer you and your team a flexible space with little obligations and more time to focus on business. Our location is a Prime HUB Zone with quick access to the Capital Beltway",
                                 daily_rate: 20,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/maryland/greenbelt/business-gate/17-1540329720.jpg"
                                 )

space11 = Space.find_or_create_by(name: "Cove",
                                 street_address: "1624 14th Street NW",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20009",
                                 lat: Geocoder.search("1624 14th Street NW, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("1624 14th Street NW, Washington, United States").first.coordinates[1],
                                 description: "No one likes to work, but everyone likes to be productive. cove provides a place in your neighborhood to get things done, alongside others doing just the same. If you ever find yourself trying to work out of the lonely living room, noisy coffee shop, or boring office, cove is for you.

                                 Our convenient locations have everything you need—unlimited coffee, fast wifi, color printing—but it’s the small things that make the difference: accessible outlets, call boxes, and a diverse community focused on being productive.",
                                 daily_rate: 50,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/cove/main-1498292675.jpg"
                                 )

space12 = Space.find_or_create_by(name: "District Offices - Capitol Hill",
                                 street_address: "10 G Street Northeast, Suite 600",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20002",
                                 lat: Geocoder.search("10 G Street Northeast, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("10 G Street Northeast, Washington, United States").first.coordinates[1],
                                 description: "The latest in workspace solutions. Spectacularly designed, DC workspaces is equipped with the most modern, comfortable furnishings, the best IT solutions and knowledgeable, experienced staff to assist you. DC workspaces caters to everything from start-ups to Fortune 500 companies.

                                 Come experience co-working and see why it has become the most popular way for entrepreneurs and independent professionals to work. Plenty of Wi-Fi, comfortable work space, coffee and cafe!",
                                 daily_rate: 20,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/district-offices-capitol-hill/main.jpg"
                                 )

space13 = Space.find_or_create_by(name: "1776",
                                 street_address: "1133 15th St NW",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20005",
                                 lat: Geocoder.search("1133 15th St NW, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("1133 15th St NW, Washington, United States").first.coordinates[1],
                                 description: "A shared workspace that also acts as a global incubator and seed fund by providing the essentials for tackling challenges in various areas, 1776 enables startups and professionals alike to gather towards positive impact.

                                 Workspace benefits include 24/7 campus access, a modern interior with equipped high speed internet, a lounge and chill out area plus exclusive access to resources and networks.",
                                 daily_rate: 50,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/1776/2.jpg"
                                 )

space14 = Space.find_or_create_by(name: "BUREAU",
                                 street_address: "1800 Wyoming Avenue NW",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20009",
                                 lat: Geocoder.search("1800 Wyoming Avenue NW, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("1800 Wyoming Avenue NW, Washington, United States").first.coordinates[1],
                                 description: "Designed with entrepreneurs in mind, BUREAU serves as a sanctuary for women to network, collaborate, and share ideas. This designer space is also available for private events, and hosts monthly gatherings and WERQshops for members and the community to come together.",
                                 daily_rate: 45,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/bureau/main.jpg"
                                 )

space15 = Space.find_or_create_by(name: "Mindspace K Street",
                                 street_address: "1301 K Stree",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20005",
                                 lat: Geocoder.search("1301 K Street Northwest, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("1301 K Street Northwest, Washington, United States").first.coordinates[1],
                                 description: "Mindspace is the global coworking provider of beautiful and inspiring private offices and spaces for teams of all sizes. It’s time to expand your mind, network and business, make connections that matter and introduce your team members to an artistically designed workspace that will help them realize their dreams.",
                                 daily_rate: 50,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/mindspace-k-street/1-1538901969.jpg"
                                 )

space16 = Space.find_or_create_by(name: "GSD Workclub Alexandria",
                                 street_address: "2312 Mount Vernon Avenue,",
                                 city: "Alexandria",
                                 state: "VA",
                                 zip: "22301",
                                 lat: Geocoder.search("2312 Mount Vernon Avenue, Alexandria, United States").first.coordinates[0],
                                 long: Geocoder.search("2312 Mount Vernon Avenue, Alexandria, United States").first.coordinates[1],
                                 description: "GSD is a coworking club in the heart of Alexandria, VA. We offer a progressive community along with free wi-fi, printing & faxing, cable, coffee, and snacks. GSD is located in the Del Ray neighborhood on a block with restaurants, boutique shops, and a UPS store. We are within 2 blocks of a pharmacy, convenience store, dry cleaning, post office, banks, boutique shops, bars, and salons.",
                                 daily_rate: 25,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/virginia/alexandria/gsd-workclub/4.png"
                                 )

space17 = Space.find_or_create_by(name: "Refraction",
                                 street_address: "11911 Freedom Dr, Tower 1, 8th Floor",
                                 city: "Reston",
                                 state: "VA",
                                 zip: "20190",
                                 lat: Geocoder.search("11911 Freedom Dr, Reston, United States").first.coordinates[0],
                                 long: Geocoder.search("11911 Freedom Dr, Reston, United States").first.coordinates[1],
                                 description: "Refraction is a unique and dynamic coworking community serving the business leaders, creatives, and philanthropists of Northern Virginia. Refraction is a curated hub of creativity, collaboration, and innovation that helps businesses build more dynamic teams and grow their company. Collectively we experiment with ground breaking research and cultural trends to set new standards in business excellence and make the future of work an everyday reality.",
                                 daily_rate: 40,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/virginia/reston/refraction/3.jpg"
                                 )

space18 = Space.find_or_create_by(name: "In3",
                                 street_address: "2301 Georgia Avenue NW",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20001",
                                 lat: Geocoder.search("2301 Georgia Avenue Northwest, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("2301 Georgia Avenue Northwest, Washington, United States").first.coordinates[1],
                                 description: "In3 is the District of Columbia’s first community space focused on inclusion, innovation and incubation. The incubator is committed to creating a collaborative environment where under-resourced members have access to the space and services needed to build or grow a successful business.",
                                 daily_rate: 50,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/in3/5.jpg"
                                 )

space19 = Space.find_or_create_by(name: "Nonprofit Village",
                                 street_address: "12320 Parklawn Drive",
                                 city: "Rockville",
                                 state: "MD",
                                 zip: "20852",
                                 lat: Geocoder.search("12320 Parklawn Drive, Bethesda, United States").first.coordinates[0],
                                 long: Geocoder.search("12320 Parklawn Drive, Bethesda, United States").first.coordinates[1],
                                 description: "Nonprofit Village is a shared space for nonprofit organizations. We have 31 full service members that rent space, and more that use the site as a virtual address for mail. We offer 2 meetings rooms that accommodate 15-20 people and 1 meeting room that accommodates 3-4 people. We are open from 9 am - 5 pm Monday through Friday, and can book affordable meeting rooms for evening use. We accept all major credit cards.",
                                 daily_rate: 30,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/maryland/rockville/nonprofit-village/main.JPG"
                                 )

space20 = Space.find_or_create_by(name: "Spaces NoMa",
                                 street_address: "1140 3rd Street NE",
                                 city: "Washington",
                                 state: "DC",
                                 zip: "20002",
                                 lat: Geocoder.search("1140 3rd Street Northeast, Washington, United States").first.coordinates[0],
                                 long: Geocoder.search("1140 3rd Street Northeast, Washington, United States").first.coordinates[1],
                                 description: "Spaces NoMa is situated in the rapidly developing NoMa neighborhood of D.C. This flourishing neighbourhood offers spacious, walkable streets and plenty of opportunities to immerse yourself in the fresh, urban scene. Union Station is less than ten minutes away and New York Avenue is just three blocks from the centre. You’ll be moments away from the U.S. Capitol and Supreme Court as well as other government offices, museums, amenities and more.",
                                 daily_rate: 30,
                                 host_id: 1,
                                 img_url: "https://coworker.imgix.net/photos/united-states/washington-dc/washington/spaces-noma/main.jpg"
                                 )
puts "Custom spaces created successfully."

Space.all.each{|space| space.update(slug: space.name.parameterize, street_address: "#{space.street_address}, #{space.city}, #{space.state} #{space.zip}")}

features = ["single desk",
            "group desk",
            "conference room",
            "wifi",
            "monitors",
            "coffee machine",
            ]

features.each{|feature| Feature.find_or_create_by(name: feature)}



Feature.find_or_create_by(name: "office", img_url: "https://i.imgur.com/ethlPso.png")
Feature.find_or_create_by(name: "personal assistant", img_url: "https://i.imgur.com/73qeabh.png")
Feature.find_or_create_by(name: "formal rental", img_url: "https://i.imgur.com/2ao3kY1.png")

single = Feature.find(1)
group = Feature.find(2)
conference = Feature.find(3)
wifi = Feature.find(4)
monitor = Feature.find(5)
coffee = Feature.find(6)
office = Feature.find(7)
assistant = Feature.find(8)
clothing = Feature.find(9)

single.update(img_url: "https://i.imgur.com/O4ShyYT.png")
group.update(img_url: "https://i.imgur.com/RBLRKft.png")
conference.update(img_url: "https://i.imgur.com/zdvODik.png")
wifi.update(img_url: "http://icons.iconarchive.com/icons/custom-icon-design/flatastic-11/128/Wifi-2-icon.png")
monitor.update(img_url: "http://mbabangalore.co.in/images/reicon6.png")
coffee.update(img_url: "https://www.mrtakeoutbags.com/mm5/graphics/flat-design-coffee-cup.png")

features1 = [single,group,conference,wifi,monitor,coffee]
features2 = [single,conference,office,wifi]
features3 = [single,conference,office,wifi,assistant]
features4 = [conference, wifi]
features5 = [conference, office, wifi]
features5 = [single,wifi,coffee]
features6 = [single,office,wifi,coffee,assistant]
features7 = [single,group,conference,wifi]
features8 = [single,group,conference,office,wifi]
features9 = [single,wifi,monitor]
features10 = [single,office,wifi,monitor]
features11 = [single,group,wifi]
features12 = [single,group,office,wifi]
features13 = [single,conference,wifi,assistant]
features14 = [single]
features15 = [single,conference]
features16 = [single,office,conference]
features17 = [single,office,coffee]

features = [features1,
            features2,
            features3,
            features4,
            features5,
            features6,
            features7,
            features8,
            features9,
            features10,
            features11,
            features12,
            features13,
            features14,
            features15,
            features16,
            features17]

space1.features = features1
space2.features = features2
space3.features = features3
space4.features = features4
space5.features = features1
space6.features = features5
space7.features = features4
space8.features = features2
space9.features = features7
space10.features = features1
space11.features = features1
space12.features = features2
space13.features = features2
space14.features = features5
space15.features = features1
space16.features = features3
space17.features = features2
space18.features = features7
space19.features = features5
space20.features = features5

puts "Features created successfully."

spaces = Space.all.sort_by{|space| space.id}

# spaces[20..-1].each do |space|
#     space.features = features[rand(17)]
#     space.save
# end

spaces = [
    {
        "ID": 15012,
        "city": "Los Angeles",
        "map": {
            "address": "1416 Tamarind Ave, Los Angeles, CA, USA",
            "lat": "34.0961881",
            "lng": "-118.31873619999999"
        },
        "name": "ParagonSpace",
        "slug": "paragonspace"
    },
    {
        "ID": 14996,
        "city": "Chicago",
        "map": {
            "address": "3033 North Clark Street, Chicago, IL, USA",
            "lat": "41.93729930000001",
            "lng": "-87.64836309999998"
        },
        "name": "DeskLabs",
        "slug": "desklabs"
    },
    {
        "ID": 14925,
        "city": "Folsom",
        "map": {
            "address": "705 Gold Lake Drive, Suite 250, Folsom, CA, USA",
            "lat": "38.6776655",
            "lng": "-121.17936839999999"
        },
        "name": "Folsom Coworking",
        "slug": "folsom-coworking"
    },
    {
        "ID": 14890,
        "city": "Fort Lauderdale",
        "map": {
            "address": "6451 N Federal Hwy, Fort Lauderdale, FL 33308, USA",
            "lat": "26.20793281064165",
            "lng": "-80.1086989767212"
        },
        "name": "BridgeSpace",
        "slug": "bridgespace"
    },
    {
        "ID": 14887,
        "city": "Atlanta",
        "map": {
            "address": "1100 Peachtree, 1100 Peachtree St NE, Atlanta, GA 30309, USA",
            "lat": "33.78479255124407",
            "lng": "-84.38321758095094"
        },
        "name": "Peachtree Offices",
        "slug": "14887-2"
    },
    {
        "ID": 14749,
        "city": "Chicago",
        "map": {
            "address": "141 W Jackson Blvd, Chicago, IL, USA",
            "lat": "41.8781329",
            "lng": "-87.6322745"
        },
        "name": "Regus - Chicago Board of Trade",
        "slug": "regus-chicago-board-trade"
    },
    {
        "ID": 14659,
        "city": "Baltimore",
        "map": {
            "address": "8 Market Pl, Baltimore, MD 21202, USA ",
            "lat": "39.2893928",
            "lng": "-76.60717319999998"
        },
        "name": "Spark Baltimore",
        "slug": "spark-baltimore"
    },
    {
        "ID": 14647,
        "city": "Westlake Village",
        "map": {
            "address": "31416 Agoura Road, Westlake Village, CA, USA",
            "lat": "34.1452668",
            "lng": "-118.80440870000001"
        },
        "name": "Hub 101",
        "slug": "hub-101"
    },
    {
        "ID": 14569,
        "city": "New York",
        "map": {
            "address": "1178 Broadway, New York, NY, USA",
            "lat": "40.74527399999999",
            "lng": "-73.98837579999997"
        },
        "name": "The Farm Nomad",
        "slug": "the-farm-nomad"
    },
    {
        "ID": 14550,
        "city": "New York",
        "map": {
            "address": "188 Grand Street, New York, NY, USA",
            "lat": "40.719511",
            "lng": "-73.99707480000001"
        },
        "name": "The Farm Nolita",
        "slug": "the-farm-nolita"
    },
    {
        "ID": 14516,
        "city": "Mineola",
        "map": {
            "address": "34 Willis Ave, Mineola, NY, USA",
            "lat": "40.7400422",
            "lng": "-73.63566120000002"
        },
        "name": "Office Space Li- Mineola",
        "slug": "office-space-li-mineola-2"
    },
    {
        "ID": 14307,
        "city": "Chicago",
        "map": {
            "address": "211 West Wacker Drive, Chicago, IL, USA",
            "lat": "41.886454",
            "lng": "-87.63460169999996"
        },
        "name": "Athena.Trade",
        "slug": "athena-trade"
    },
    {
        "ID": 14163,
        "city": "New Orleans",
        "map": {
            "address": "400 Poydras Street, Suite 900, New Orleans, LA 70130",
            "lat": "29.9486616",
            "lng": "-90.06793349999998"
        },
        "name": "Launch Pad",
        "slug": "launch-pad-2"
    },
    {
        "ID": 14044,
        "city": "Mineola",
        "map": {
            "address": "369 Willis Ave",
            "lat": "40.7531723",
            "lng": "-73.643641"
        },
        "name": "Office Space LI - Mineola",
        "slug": "office-space-li-mineola"
    },
    {
        "ID": 14031,
        "city": "Cedarhurst",
        "map": {
            "address": "680 Central Ave",
            "lat": "42.6747679",
            "lng": "-73.78451089999999"
        },
        "name": "Office Space LI - Cedarhurst",
        "slug": "office-spale-li-cedarhurst"
    },
    {
        "ID": 13975,
        "city": "Brooklyn",
        "map": {
            "address": "525 Court St, Brooklyn, NY, USA",
            "lat": "40.674826",
            "lng": "-73.99918300000002"
        },
        "name": "The Offices At 525 Court",
        "slug": "offices-525-court"
    },
    {
        "ID": 13791,
        "city": "Detroit",
        "map": {
            "address": "100 Riverfront Drive, Detroit, MI, United States",
            "lat": "42.3244406",
            "lng": "-83.0549193"
        },
        "name": "Synchronous Coworking",
        "slug": "synchronous-coworking"
    },
    {
        "ID": 13764,
        "city": "Maumelle",
        "map": {
            "address": "Jolt Office Hub, 115 Audubon Drive Suite 9, Maumelle, AR, United States",
            "lat": "34.8519415",
            "lng": "-92.40505630000001"
        },
        "name": "Jolt Office Hub - Maumelle",
        "slug": "jolt-office-hub"
    },
    {
        "ID": 13759,
        "city": "Newark",
        "map": {
            "address": "Suite 230, 625 Broad Street Newark, New Jersey 07102",
            "lat": "40.7402622",
            "lng": "-74.17012720000002"
        },
        "name": "Coworking, Permanent Desks &amp; Private Offices Suites in Heart of Newark",
        "slug": "coworking-permanent-desks-private-offices-suites-heart-newark"
    },
    {
        "ID": 13745,
        "city": "Nashville",
        "map": {
            "address": "604 Gallatin Avenue, Nashville, Tennessee 37206, United States",
            "lat": "36.18292599999999",
            "lng": "-86.74942620000002"
        },
        "name": "Coworking &amp; Private Offices Suites in East Nashville",
        "slug": "coworking-private-offices-suites-east-nashville"
    },
    {
        "ID": 13695,
        "city": "Schenectady",
        "map": {
            "address": "433 State Street, Schenectady, NY, United States",
            "lat": "42.8131236",
            "lng": "-73.94149319999997"
        },
        "name": "URBAN CO-WORKS",
        "slug": "urban-co-works"
    },
    {
        "ID": 13645,
        "city": "New York",
        "map": {
            "address": "158 West 27th Street, New York, NY, United States",
            "lat": "40.74618",
            "lng": "-73.9933436"
        },
        "name": "TechHub NYC",
        "slug": "techhub-nyc"
    },
    {
        "ID": 13642,
        "city": "Grand Junction",
        "map": {
            "address": "750 Main Street, Grand Junction, CO, United States",
            "lat": "39.0676169",
            "lng": "-108.55965659999998"
        },
        "name": "The Factory",
        "slug": "the-factory-2"
    },
    {
        "ID": 13597,
        "city": "New York",
        "map": {
            "address": "First Floor Wework Building, 1460 Broadway",
            "lat": "40.75515499999999",
            "lng": "-73.98627340000002"
        },
        "name": "Branex",
        "slug": "branex"
    },
    {
        "ID": 13571,
        "city": "New York",
        "map": {
            "address": "Long Beach Boardwalk, 780 Long Beach Blvd, Long Beach, NY, United States",
            "lat": "40.58339180000001",
            "lng": "-73.65768129999998"
        },
        "name": "Bridgeworks Long Beach",
        "slug": "bridgeworks-long-beach"
    },
    {
        "ID": 13153,
        "city": "Austin",
        "map": {
            "address": "1139 West Braker Lane, Austin, TX, United States",
            "lat": "30.3843884",
            "lng": "-97.6925986"
        },
        "name": "Greenway Central",
        "slug": "greenway-central"
    },
    {
        "ID": 13057,
        "city": "Miami",
        "map": {
            "address": "66 W Flagler St, Miami, FL 33130, USA",
            "lat": "25.773892521806758",
            "lng": "-80.19491672515869"
        },
        "name": "StartHub Miami Private Office Space starting from $999",
        "slug": "starthub-downtown-miami-shared-office-space"
    },
    {
        "ID": 13031,
        "city": "New York",
        "map": {
            "address": "77 Bowery, New York, NY, United States",
            "lat": "40.71658",
            "lng": "-73.9954123"
        },
        "name": "Buro HQ",
        "slug": "buro-hq"
    },
    {
        "ID": 13014,
        "city": "New York",
        "map": {
            "address": "49 Howard Street, New York, NY, United States",
            "lat": "40.7201423",
            "lng": "-74.00201199999998"
        },
        "name": "BuroHQ",
        "slug": "burohq"
    },
    {
        "ID": 13000,
        "city": "New York",
        "map": {
            "address": "220 East 23rd St STE 500",
            "lat": "40.7382752",
            "lng": "-73.98228489999997"
        },
        "name": "Sputnik Space",
        "slug": "sputnik-space-coworking-platform-launched-new-york-startup-accelerator"
    },
    {
        "ID": 12871,
        "city": "Hollywood",
        "map": {
            "address": "7080 Hollywood Boulevard, Los Angeles, CA, United States",
            "lat": "34.1011651",
            "lng": "-118.34445670000002"
        },
        "name": "IgnitedSpaces",
        "slug": "ignitedspaces"
    },
    {
        "ID": 12865,
        "city": "Virginia Beach",
        "map": {
            "address": "1701 Baltic Ave, Virginia Beach, VA, United States",
            "lat": "36.844764",
            "lng": "-75.97899280000001"
        },
        "name": "1701 Coworking",
        "slug": "1701-coworking"
    },
    {
        "ID": 12856,
        "city": "Philadelphia",
        "map": {
            "address": "1635 Market Street, Philadelphia, PA, United States",
            "lat": "39.9532514",
            "lng": "-75.16804760000002"
        },
        "name": "MakeOffices 17th &amp; Market",
        "slug": "makeoffices-17th-market"
    },
    {
        "ID": 12794,
        "city": "Victor",
        "map": {
            "address": "44 S Main St, Victor, ID 83455, USA",
            "lat": "43.602069281313476",
            "lng": "-111.11099488836061"
        },
        "name": "Work Farm",
        "slug": "work-farm"
    },
    {
        "ID": 12790,
        "city": "Providence",
        "map": {
            "address": "166 Valley St Building 6M, Suite #103 Providence, RI 02909",
            "lat": "41.8212619",
            "lng": "-71.44035980000001"
        },
        "name": "Sprout CoWorking",
        "slug": "sprout-coworking-2"
    },
    {
        "ID": 12787,
        "city": "Golden Valley",
        "map": {
            "address": "919 Lilac Drive North, Minneapolis, MN, United States",
            "lat": "44.9889908",
            "lng": "-93.35024770000001"
        },
        "name": "Studio Cowork",
        "slug": "studio-cowork"
    },
    {
        "ID": 12735,
        "city": "Chicago",
        "map": {
            "address": "1286 North Milwaukee Avenue, Chicago, IL, United States",
            "lat": "41.90501149999999",
            "lng": "-87.66953520000004"
        },
        "name": "Single private office available Wicker Park- Platform",
        "slug": "single-private-office-available-wicker-park-platform"
    },
    {
        "ID": 12532,
        "city": "Columbia",
        "map": {
            "address": "",
            "lat": "-32.02670629333613",
            "lng": "168.57421875"
        },
        "name": "71Seventy Business Institute",
        "slug": "12532-2"
    },
    {
        "ID": 12523,
        "city": "El Paso",
        "map": {
            "address": "114 Texas Avenue, El Paso, TX, United States",
            "lat": "31.7584711",
            "lng": "-106.48742099999998"
        },
        "name": "CoWork Oasis",
        "slug": "cowork-oasis"
    },
    {
        "ID": 12490,
        "city": "Shelby",
        "map": {
            "address": "407 North Lafayette Street, Shelby, NC, United States",
            "lat": "35.29661629999999",
            "lng": "-81.54000969999998"
        },
        "name": "Biz Hub",
        "slug": "biz-hub"
    },
    {
        "ID": 11012,
        "city": "Erie",
        "map": {
            "address": "1001 State Street., Suite 907, Erie, PA 16501",
            "lat": "42.1254741",
            "lng": "-80.08202540000002"
        },
        "name": "Radius CoWork",
        "slug": "radius-cowork-2"
    },
    {
        "ID": 12473,
        "city": "Saint Louis",
        "map": {
            "address": "2631 Gravois Ave, St. Louis, MO, United States",
            "lat": "38.6045469",
            "lng": "-90.22468700000002"
        },
        "name": "Nexcore",
        "slug": "nexcore"
    },
    {
        "ID": 12355,
        "city": "New York City",
        "map": {
            "address": "1216 Broadway, New York, NY 10001, United States",
            "lat": "40.74661199999999",
            "lng": "-73.98809089999997"
        },
        "name": "Grind NoMad",
        "slug": "grind-nomad"
    },
    {
        "ID": 12304,
        "city": "San Mateo",
        "map": {
            "address": "127 North San Mateo Drive, San Mateo, CA, United States",
            "lat": "37.5687759",
            "lng": "-122.3290136"
        },
        "name": "Whiteboard Labs",
        "slug": "whiteboard-labs"
    },
    {
        "ID": 12173,
        "city": "Portland",
        "map": {
            "address": "4949 SW Macadam Ave, Portland, OR, United States",
            "lat": "45.4875042",
            "lng": "-122.67582400000003"
        },
        "name": "Urban Office",
        "slug": "urban-office-2"
    },
    {
        "ID": 11866,
        "city": "Pensacola",
        "map": {
            "address": "3695 North L Street, Pensacola, FL, United States",
            "lat": "30.4483524",
            "lng": "-87.2362033"
        },
        "name": "Pensacola Socialdesk",
        "slug": "pensacola-socialdesk"
    },
    {
        "ID": 11652,
        "city": "Geneva",
        "map": {
            "address": "25 North River Lane, Geneva, IL, United States",
            "lat": "41.88788279999999",
            "lng": "-88.30361870000002"
        },
        "name": "25N Coworking Geneva",
        "slug": "25n-coworking-geneva"
    },
    {
        "ID": 11636,
        "city": "Brooklyn",
        "map": {
            "address": "67 West Brooklyn",
            "lat": "40.72860439999999",
            "lng": "-73.95937889999999"
        },
        "name": "Brooklyn Coworking",
        "slug": "brooklyn-coworking"
    },
    {
        "ID": 11539,
        "city": "Austin",
        "map": {
            "address": "7858 Shoal Creek Boulevard, Austin, TX 78757, United States",
            "lat": "30.3607915",
            "lng": "-97.74146999999999"
        },
        "name": "Switch Cowork",
        "slug": "switch-cowork"
    },
    {
        "ID": 11518,
        "city": "Forest Hills",
        "map": {
            "address": "108-14 72nd Avenue, Forest Hills, NY, United States",
            "lat": "40.7196573",
            "lng": "-73.84215139999998"
        },
        "name": "The Austin Space",
        "slug": "the-austin-space"
    },
    {
        "ID": 11434,
        "city": "New York City",
        "map": {
            "address": "442 Broadway 2nd Floor, New York, NY 10013, United States",
            "lat": "40.7200852",
            "lng": "-74.00087429999996"
        },
        "name": "Kin Spaces",
        "slug": "kin-spaces"
    },
    {
        "ID": 11425,
        "city": "Denver",
        "map": {
            "address": "1776 South Jackson Street, Denver, CO 80210, United States",
            "lat": "39.68478849999999",
            "lng": "-104.94276250000001"
        },
        "name": "Handshakin' Headquarters",
        "slug": "handshakin-headquarters"
    },
    {
        "ID": 11353,
        "city": "New York City",
        "map": {
            "address": "25 East 39th Street, New York, NY, United States",
            "lat": "40.75239069999999",
            "lng": "-73.98363540000003"
        },
        "name": "Spark Labs Bryant Park",
        "slug": "spark-labs-bryant-park"
    },
    {
        "ID": 11349,
        "city": "New York City",
        "map": {
            "address": "833 Broadway, New York, NY, United States",
            "lat": "40.733915",
            "lng": "-73.99131669999997"
        },
        "name": "Spark Labs Union Square",
        "slug": "spark-labs"
    },
    {
        "ID": 10921,
        "city": "Santa Barbara",
        "map": {
            "address": "414 Olive Street, Santa Barbara, CA, United States",
            "lat": "34.42169980000001",
            "lng": "-119.68891410000003"
        },
        "name": "The Sandbox Santa Barbara",
        "slug": "the-sandbox-santa-barbara"
    },
    {
        "ID": 10777,
        "city": "Springfield",
        "map": {
            "address": "313 South Avenue, Springfield, MO, United States",
            "lat": "37.20773889999999",
            "lng": "-93.29281600000002"
        },
        "name": "Originate Office Space",
        "slug": "originate-office-space"
    },
    {
        "ID": 10681,
        "city": "Charlotte",
        "map": {
            "address": "2459 Wilkinson Blvd, Charlotte, NC, United States",
            "lat": "35.2233155",
            "lng": "-80.88184489999998"
        },
        "name": "The Launch Factory",
        "slug": "the-launch-factory"
    },
    {
        "ID": 10653,
        "city": "Austin",
        "map": {
            "address": "5323 Levander Loop, Austin, TX, United States",
            "lat": "30.2500994",
            "lng": "-97.69605910000001"
        },
        "name": "Journey Coworking",
        "slug": "atx-factory"
    },
    {
        "ID": 10588,
        "city": "Ridgway",
        "map": {
            "address": "257 Sherman Street, Ridgway, CO, United States",
            "lat": "38.151716",
            "lng": "-107.753061"
        },
        "name": "Proximity Space Ridgway",
        "slug": "proximity-space-ridgway"
    },
    {
        "ID": 10580,
        "city": "Frisco",
        "map": {
            "address": "620 East Main Street, Frisco, CO, United States",
            "lat": "39.576439",
            "lng": "-106.09408860000002"
        },
        "name": "EVO3 Workspace",
        "slug": "evo3-workspace"
    },
    {
        "ID": 10532,
        "city": "Lawrenceville",
        "map": {
            "address": "279 West Pike Street, Lawrenceville, GA, United States",
            "lat": "33.95702199999999",
            "lng": "-83.99344689999998"
        },
        "name": "Cornerstone Coworking",
        "slug": "cornerstone-coworking"
    },
    {
        "ID": 10390,
        "city": "Arvada",
        "map": {
            "address": "5625 Olde Wadsworth Boulevard, Arvada, CO, United States",
            "lat": "39.7996828",
            "lng": "-105.0814762"
        },
        "name": "Global Co-working",
        "slug": "global-co-working"
    },
    {
        "ID": 10352,
        "city": "Ventura",
        "map": {
            "address": "505 Poli Street, Ventura, CA, United States",
            "lat": "34.2827199",
            "lng": "-119.29335079999998"
        },
        "name": "Ventura Ventures by Aspire 3",
        "slug": "ventura-ventures-by-aspire-3"
    },
    {
        "ID": 10277,
        "city": "Coppell",
        "map": {
            "address": "537 Houston St, Coppell, TX, United States",
            "lat": "32.95338999999999",
            "lng": "-97.00790799999999"
        },
        "name": "Collective Office",
        "slug": "collective-office"
    },
    {
        "ID": 10207,
        "city": "Reno",
        "map": {
            "address": "800 Haskell Street, Reno, NV, United States",
            "lat": "39.5165282",
            "lng": "-119.80946929999999"
        },
        "name": "Reno Coworking - Fusion@Midtown",
        "slug": "reno-coworking-fusionmidtown"
    },
    {
        "ID": 9728,
        "city": "Santa Cruz",
        "map": {
            "address": "325 Soquel Avenue, Santa Cruz, CA, United States",
            "lat": "36.974513",
            "lng": "-122.02074500000003"
        },
        "name": "The Satellite Center Santa Cruz",
        "slug": "the-satellite-center-santa-cruz"
    },
    {
        "ID": 10145,
        "city": "Fort Mill",
        "map": {
            "address": "118 Academy St, Fort Mill, SC, United States",
            "lat": "35.0061455",
            "lng": "-80.94430890000001"
        },
        "name": "LOOM Coworking, Gallery and Event Space",
        "slug": "loom-coworking-gallery-and-event-space"
    },
    {
        "ID": 10134,
        "city": "Fairbanks",
        "map": {
            "address": "410 2nd Ave Suite 100 Fairbanks, Alaska 99701",
            "lat": "64.8438369",
            "lng": "-147.716403"
        },
        "name": "the  HUB",
        "slug": "the-hub"
    },
    {
        "ID": 10083,
        "city": "El Segundo",
        "map": {
            "address": "2150 Park Place, El Segundo, CA, United States",
            "lat": "33.90502829999999",
            "lng": "-118.38598569999999"
        },
        "name": "El Camp",
        "slug": "el-camp"
    },
    {
        "ID": 10054,
        "city": "Los Angeles",
        "map": {
            "address": "6600 Sunset Blvd, Los Angeles, CA, United States",
            "lat": "34.0977491",
            "lng": "-118.33342820000001"
        },
        "name": "Sandhouse Los Angeles",
        "slug": "sandhouse-los-angeles"
    },
    {
        "ID": 9881,
        "city": "Lowell ",
        "map": {
            "address": "100 Merrimack Street, Lowell, MA, United States",
            "lat": "42.6455256",
            "lng": "-71.30933870000001"
        },
        "name": "The Merge at Merrimack",
        "slug": "the-merge-at-merrimack"
    },
    {
        "ID": 9733,
        "city": "Boston",
        "map": {
            "address": "50 Milk Street, Boston, MA, United States",
            "lat": "42.357004",
            "lng": "-71.05761899999999"
        },
        "name": "Impact Hub Boston",
        "slug": "impact-hub-boston"
    },
    {
        "ID": 9628,
        "city": "Sacramento",
        "map": {
            "address": "2572 21st St, Sacramento, CA 95818, United States",
            "lat": "38.5587148",
            "lng": "-121.48639020000002"
        },
        "name": "Capsity",
        "slug": "capsity"
    },
    {
        "ID": 9496,
        "city": "Philmont",
        "map": {
            "address": "95 Main Street, Philmont, NY, United States",
            "lat": "42.24853900000001",
            "lng": "-73.65022199999999"
        },
        "name": "Purpose Coworking",
        "slug": "purpose-coworking"
    },
    {
        "ID": 9352,
        "city": "New York City",
        "map": {
            "address": "26 Broadway, New York, NY, United States",
            "lat": "40.70520219999999",
            "lng": "-74.01316550000001"
        },
        "name": "Primary",
        "slug": "primary"
    },
    {
        "ID": 9272,
        "city": "Scottsdale",
        "map": {
            "address": "7077 E Marilyn Rd, Building 1. Scottsdale, AZ, United States",
            "lat": "33.6204098",
            "lng": "-111.92862780000002"
        },
        "name": "ALL IN Workspace",
        "slug": "all-in-workspace"
    },
    {
        "ID": 9126,
        "city": "Greenville",
        "map": {
            "address": "101 N Main St, Greenville, SC 29601, USA",
            "lat": "34.85200113810886",
            "lng": "-82.39973194106977"
        },
        "name": "OpenWorks",
        "slug": "openworks"
    },
    {
        "ID": 9070,
        "city": "Wamego",
        "map": {
            "address": "427 Lincoln Ave, Wamego, KS, United States",
            "lat": "39.201859",
            "lng": "-96.305387"
        },
        "name": "Iron Clad",
        "slug": "iron-clad"
    },
    {
        "ID": 9039,
        "city": "North Palm Beach",
        "map": {
            "address": "840 U.S. Hwy 1, North Palm Beach, Florida, Yhdysvallat",
            "lat": "26.8832615",
            "lng": "-80.05698139999998"
        },
        "name": "The Coworking Company North Palm Beach",
        "slug": "the-coworking-company-north-palm-beach"
    },
    {
        "ID": 8980,
        "city": "Los Angeles",
        "map": {
            "address": "333 South Grand Avenue, Los Angeles, CA, United States",
            "lat": "34.0528847",
            "lng": "-118.2519168"
        },
        "name": "INDIE DESK - FIRST COWORKING SPACE in DTLA",
        "slug": "indie-desk"
    },
    {
        "ID": 8919,
        "city": "Washington DC",
        "map": {
            "address": "1624 14th St NW, Washington, DC, United States",
            "lat": "38.9121066",
            "lng": "-77.03230859999996"
        },
        "name": "cove",
        "slug": "cove"
    },
    {
        "ID": 8628,
        "city": "Kansas City",
        "map": {
            "address": "7449 Broadway St, Kansas City, MO 64114, United States",
            "lat": "38.99250139999999",
            "lng": "-94.59369600000002"
        },
        "name": "Cowork Waldo KC",
        "slug": "cowork-waldo-kc"
    },
    {
        "ID": 8524,
        "city": "Leesburg",
        "map": {
            "address": "602 S King St, Fourth Floor, Leesburg, VA, United States",
            "lat": "39.1156615",
            "lng": "-77.5636015"
        },
        "name": "Evolve.Space",
        "slug": "evolve-space"
    },
    {
        "ID": 8506,
        "city": "New York City",
        "map": {
            "address": "425 Broadway, New York, NY, United States",
            "lat": "40.7198698",
            "lng": "-74.00186489999999"
        },
        "name": "The Loft",
        "slug": "the-loft"
    },
    {
        "ID": 8427,
        "city": "Denver",
        "map": {
            "address": "4047 Tejon Street, Denver, CO, United States",
            "lat": "39.7726017",
            "lng": "-105.01146460000001"
        },
        "name": "Sunnyside Station",
        "slug": "sunnyside-station"
    },
    {
        "ID": 8421,
        "city": "Nashville",
        "map": {
            "address": "1033 Demonbreun Street, Nashville, TN, United States",
            "lat": "36.1550579",
            "lng": "-86.78464059999999"
        },
        "name": "Industrious Nashville",
        "slug": "industrious-nashville"
    },
    {
        "ID": 8417,
        "city": "Brooklyn",
        "map": {
            "address": "594 Dean St, Brooklyn, NY, United States",
            "lat": "40.68038599999999",
            "lng": "-73.97028799999998"
        },
        "name": "Industrious Brooklyn",
        "slug": "industrious-brooklyn"
    },
    {
        "ID": 8396,
        "city": "Minneapolis",
        "map": {
            "address": "15 South 5th Street, Minneapolis, MN, United States",
            "lat": "44.9789949",
            "lng": "-93.27173540000001"
        },
        "name": "Assemble Shared Office",
        "slug": "assemble-shared-office-2"
    },
    {
        "ID": 8318,
        "city": "Austin",
        "map": {
            "address": "411 West Monroe Street, Austin, TX, United States",
            "lat": "30.2488133",
            "lng": "-97.75454279999997"
        },
        "name": "Impact Hub Austin at Vuka",
        "slug": "impact-hub-austin-at-vuka"
    },
    {
        "ID": 8269,
        "city": "San Francisco",
        "map": {
            "address": "415 Jackson Street, San Francisco, CA, United States",
            "lat": "37.7964907",
            "lng": "-122.4024273"
        },
        "name": "The Vault",
        "slug": "the-vault"
    },
    {
        "ID": 8259,
        "city": "Brooklyn",
        "map": {
            "address": "14 Dekalb Avenue, Brooklyn, NY, United States",
            "lat": "40.6897476",
            "lng": "-73.98236810000003"
        },
        "name": "CoLab-Factory",
        "slug": "colab-factory"
    },
    {
        "ID": 8216,
        "city": "Sunnyvale",
        "map": {
            "address": "100 S Murphy Ave, Sunnyvale, CA, United States",
            "lat": "37.377338",
            "lng": "-122.02968399999997"
        },
        "name": "The Satellite Centers Sunnyvale",
        "slug": "the-satellite-centers-sunnyvale"
    },
    {
        "ID": 8201,
        "city": "Columbus",
        "map": {
            "address": "3820 North High Street, Columbus, OH, United States",
            "lat": "40.0399909",
            "lng": "-83.01762930000001"
        },
        "name": "The Salt Mines",
        "slug": "the-salt-mines-2"
    },
    {
        "ID": 8135,
        "city": "Philadelphia",
        "map": {
            "address": "230 South Broad Street, Philadelphia, PA, United States",
            "lat": "39.9484112",
            "lng": "-75.16484149999997"
        },
        "name": "Industrious Philadelphia",
        "slug": "industrious-philadelphia"
    },
    {
        "ID": 8129,
        "city": "Atlanta",
        "map": {
            "address": "675 Ponce De Leon Avenue Northeast, Atlanta, GA, United States",
            "lat": "33.772465",
            "lng": "-84.36537600000003"
        },
        "name": "Industrious Atlanta Ponce",
        "slug": "industrious-atlanta-ponce"
    },
    {
        "ID": 8125,
        "city": "Atlanta",
        "map": {
            "address": "1447 Peachtree St NE, Atlanta, GA, United States",
            "lat": "33.794446",
            "lng": "-84.38680099999999"
        },
        "name": "Industrious Atlanta Midtown",
        "slug": "industrious-atlanta-midtown"
    },
    {
        "ID": 8098,
        "city": "Brooklyn",
        "map": {
            "address": "61 Greenpoint Avenue, Brooklyn, NY, United States",
            "lat": "40.730047",
            "lng": "-73.958211"
        },
        "name": "PencilWorks",
        "slug": "pencilworks"
    },
    {
        "ID": 8093,
        "city": "Chicago",
        "map": {
            "address": "320 W Ohio St, Chicago, IL, United States",
            "lat": "41.89258470000001",
            "lng": "-87.6366448"
        },
        "name": "Industrious Chicago",
        "slug": "industrious-chicago"
    },
    {
        "ID": 8073,
        "city": "Minneapolis",
        "map": {
            "address": "60 South 6th Street, #2800, Minneapolis, MN, United States",
            "lat": "44.9778175",
            "lng": "-93.27082089999999"
        },
        "name": "Industrious Minneapolis",
        "slug": "industrious-minneapolis"
    },
    {
        "ID": 8064,
        "city": "New York City",
        "map": {
            "address": "447 Broadway 2nd Floor, NY ,NY ,10013",
            "lat": "40.7205834",
            "lng": "-74.00147240000001"
        },
        "name": "The Farm Soho",
        "slug": "the-farm-soho"
    },
    {
        "ID": 8054,
        "city": "St. Louis",
        "map": {
            "address": "555 Washington Avenue, St. Louis, MO, United States",
            "lat": "38.63055629999999",
            "lng": "-90.18867239999997"
        },
        "name": "Industrious St. Louis",
        "slug": "industrious-st-louis"
    },
    {
        "ID": 8050,
        "city": "Raleigh",
        "map": {
            "address": "555 Fayetteville Street, Raleigh, NC, United States",
            "lat": "35.77310610000001",
            "lng": "-78.63901709999999"
        },
        "name": "Industrious Raleigh",
        "slug": "industrious-raleigh"
    },
    {
        "ID": 8043,
        "city": "Columbus",
        "map": {
            "address": "629 North High Street, 4th Floor, Columbus, OH, United States",
            "lat": "39.9751088",
            "lng": "-83.0035158"
        },
        "name": "Industrious Columbus",
        "slug": "industrious-columbus"
    },
    {
        "ID": 8037,
        "city": "Castle Rock",
        "map": {
            "address": "165 Caprice Court, Castle Rock, CO 80109, United States",
            "lat": "39.3834259",
            "lng": "-104.86209200000002"
        },
        "name": "ConneXion Spot",
        "slug": "connexion-spot"
    },
    {
        "ID": 8030,
        "city": "Palm Coast",
        "map": {
            "address": "389 Palm Coast Parkway Southwest, Palm Coast, FL, United States",
            "lat": "29.5520785",
            "lng": "-81.24756550000001"
        },
        "name": "Office Divvy",
        "slug": "office-divvy"
    },
    {
        "ID": 7991,
        "city": "Charleston",
        "map": {
            "address": "174 Meeting St. Suite 102 Charleston, SC 29401",
            "lat": "32.7800777",
            "lng": "-79.93095010000002"
        },
        "name": "Launch Pad",
        "slug": "launch-pad"
    },
    {
        "ID": 7963,
        "city": "Dayton",
        "map": {
            "address": "411 East 5th Street, Dayton, OH, United States",
            "lat": "39.757423",
            "lng": "-84.184506"
        },
        "name": "Nucleus CoShare",
        "slug": "nucleus-coshare"
    },
    {
        "ID": 7887,
        "city": "Los Angeles",
        "map": {
            "address": "845 S Los Angeles St, Los Angeles, CA, United States",
            "lat": "34.0412432",
            "lng": "-118.2536839"
        },
        "name": "The Park",
        "slug": "the-park"
    },
    {
        "ID": 7868,
        "city": "Springfield",
        "map": {
            "address": "104 North 6th Street, Springfield, IL, United States",
            "lat": "39.8019215",
            "lng": "-89.64771559999997"
        },
        "name": "Coterra",
        "slug": "coterra"
    },
    {
        "ID": 7678,
        "city": "Denver",
        "map": {
            "address": "201 Milwaukee St, Denver, CO, United States",
            "lat": "39.719677",
            "lng": "-104.95252600000003"
        },
        "name": "Thrive Workplace - Cherry Creek",
        "slug": "thrive-workplace-cherry-creek"
    },
    {
        "ID": 7669,
        "city": "Denver",
        "map": {
            "address": "1415 Park Avenue West, Denver, CO, United States",
            "lat": "39.756794",
            "lng": "-104.98986200000002"
        },
        "name": "Thrive Workplace - Ballpark",
        "slug": "thrive-workplace-ballpark"
    },
    {
        "ID": 7632,
        "city": "Klamath Falls",
        "map": {
            "address": "1038 Main Street, Klamath Falls, OR, United States",
            "lat": "42.227283",
            "lng": "-121.77897899999999"
        },
        "name": "Gaucho Collective",
        "slug": "gaucho-collective"
    },
    {
        "ID": 7541,
        "city": "PORTLAND",
        "map": {
            "address": "425 SE 11th Ave, Portland, OR, United States",
            "lat": "45.51964700000001",
            "lng": "-122.65490030000001"
        },
        "name": "ADX Portland",
        "slug": "adx-portland"
    },
    {
        "ID": 7511,
        "city": "Charlotte",
        "map": {
            "address": "933 Louise Ave, Charlotte, NC, United States",
            "lat": "35.2245307",
            "lng": "-80.82033389999998"
        },
        "name": "Advent Coworking",
        "slug": "advent-coworking"
    },
    {
        "ID": 7478,
        "city": "Williamsburg",
        "map": {
            "address": "215 Ingram Road 2nd floor Williamsburg, VA 23188",
            "lat": "37.252558",
            "lng": "-76.766681"
        },
        "name": "Work Nimbly",
        "slug": "work-nimbly"
    },
    {
        "ID": 7315,
        "city": "Chicago",
        "map": {
            "address": "4101 N Broadway St, Chicago, IL, United States",
            "lat": "41.95699",
            "lng": "-87.6520946"
        },
        "name": "The Shift",
        "slug": "the-shift"
    },
    {
        "ID": 7191,
        "city": "Rochester",
        "map": {
            "address": "60 Carlson Road, Rochester, NY, United States",
            "lat": "43.15138",
            "lng": "-77.5600096"
        },
        "name": "Carlson Cowork",
        "slug": "carlson-cowork"
    },
    {
        "ID": 7188,
        "city": "Westminster",
        "map": {
            "address": "9191 North Sheridan Boulevard, Westminster, CO, United States",
            "lat": "39.86304030000001",
            "lng": "-105.05386959999998"
        },
        "name": "DaVinci Institute",
        "slug": "davinci-institute"
    },
    {
        "ID": 7058,
        "city": "Sewell",
        "map": {
            "address": "591 Mantua Blvd, Sewell, NJ, United States",
            "lat": "39.775679",
            "lng": "-75.1519136"
        },
        "name": "Incutate",
        "slug": "incutate"
    },
    {
        "ID": 7023,
        "city": "Des Moines",
        "map": {
            "address": "206 6th Avenue, Des Moines, IA, United States",
            "lat": "41.5852235",
            "lng": "-93.62461489999998"
        },
        "name": "Gravitate",
        "slug": "gravitate"
    },
    {
        "ID": 7001,
        "city": "Chicago",
        "map": {
            "address": "600 West Jackson Boulevard, Chicago, IL, United States",
            "lat": "41.8781853",
            "lng": "-87.64290360000001"
        },
        "name": "Assemble Shared Office West Loop",
        "slug": "assemble-shared-office-west-loop"
    },
    {
        "ID": 6997,
        "city": "Chicago",
        "map": {
            "address": "1165 N Clark St, Chicago, IL 60610, United States",
            "lat": "41.9037138",
            "lng": "-87.6309723"
        },
        "name": "Assemble Shared Office",
        "slug": "assemble-shared-office"
    },
    {
        "ID": 6917,
        "city": "Los Angeles",
        "map": {
            "address": "830 Traction Avenue, Los Angeles, CA, United States",
            "lat": "34.0445829",
            "lng": "-118.235344"
        },
        "name": "Impact Hub Los Angeles",
        "slug": "impact-hub-los-angeles"
    },
    {
        "ID": 6910,
        "city": "Concord",
        "map": {
            "address": "42 Union Street South, Suite A, Concord, North Carolina, United States",
            "lat": "35.4095655",
            "lng": "-80.5805972"
        },
        "name": "hb5 co/work",
        "slug": "hb5-cowork"
    },
    {
        "ID": 6849,
        "city": "Bennington",
        "map": {
            "address": "194 North Street, Bennington, VT, United States",
            "lat": "42.8813121",
            "lng": "-73.1975721"
        },
        "name": "The Lightning Jar",
        "slug": "the-lightning-jar"
    },
    {
        "ID": 6812,
        "city": "San Francisco",
        "map": {
            "address": "180 Sansome Street, San Francisco, CA, United States",
            "lat": "37.7919951",
            "lng": "-122.4006339"
        },
        "name": "RocketSpace",
        "slug": "rocketspace"
    },
    {
        "ID": 6781,
        "city": "Kansas City",
        "map": {
            "address": "10000 Marshall Drive, Lenexa, KS, United States",
            "lat": "38.947916",
            "lng": "-94.74143300000003"
        },
        "name": "Plexpod",
        "slug": "plexpod"
    },
    {
        "ID": 6766,
        "city": "Brooklyn",
        "map": {
            "address": "185 Van Dyke Street, Brooklyn, NY, United States",
            "lat": "40.6775777",
            "lng": "-74.01843500000001"
        },
        "name": "SHARED Brooklyn",
        "slug": "shared-brooklyn"
    },
    {
        "ID": 6733,
        "city": "Boston",
        "map": {
            "address": "549 Columbus Avenue, Boston, MA, United States",
            "lat": "42.341586",
            "lng": "-71.08097049999998"
        },
        "name": "Make Shift Boston",
        "slug": "make-shift-boston"
    },
    {
        "ID": 6636,
        "city": "Seattle",
        "map": {
            "address": "100 South King Street, Seattle, WA 98104, USA",
            "lat": "47.59844781120936",
            "lng": "-122.33392238616943"
        },
        "name": "The Pioneer Collective",
        "slug": "the-pioneer-collective"
    },
    {
        "ID": 6516,
        "city": "Miami",
        "map": {
            "address": "111 NE 1st St, Miami, FL, United States",
            "lat": "25.7754237",
            "lng": "-80.19171690000002"
        },
        "name": "mindwarehouse",
        "slug": "mindwarehouse"
    },
    {
        "ID": 6457,
        "city": "Nashville",
        "map": {
            "address": "632 Fogg Street, Nashville, TN, United States",
            "lat": "36.1511319",
            "lng": "-86.77651500000002"
        },
        "name": "InDo Nashville",
        "slug": "indo-nashville"
    },
    {
        "ID": 6406,
        "city": "Rochester",
        "map": {
            "address": "328 South Broadway, Rochester, MN, United States",
            "lat": "44.0195458",
            "lng": "-92.46271439999998"
        },
        "name": "Cube",
        "slug": "cube"
    },
    {
        "ID": 6362,
        "city": "Culver City",
        "map": {
            "address": "8611 Washington Blvd, Culver City, CA 90232, United States",
            "lat": "34.0305142",
            "lng": "-118.38202739999997"
        },
        "name": "procolo.co",
        "slug": "procolo-co"
    },
    {
        "ID": 6260,
        "city": "Dallas",
        "map": {
            "address": "501 Elm Street, Dallas, TX, United States",
            "lat": "32.7798327",
            "lng": "-96.80783969999999"
        },
        "name": "The Grove - Dallas",
        "slug": "the-grove-dallas"
    },
    {
        "ID": 6256,
        "city": "Montrose",
        "map": {
            "address": "210 E Main St, Montrose, CO, United States",
            "lat": "38.4780749",
            "lng": "-107.878127"
        },
        "name": "Proximity Space Coworking",
        "slug": "proximity-space-coworking"
    },
    {
        "ID": 6214,
        "city": "Fort Wayne",
        "map": {
            "address": "809 S Calhoun St, Fort Wayne, IN, United States",
            "lat": "41.0789818",
            "lng": "-85.13930390000002"
        },
        "name": "CoWork Fort Wayne",
        "slug": "cowork-fort-wayne"
    },
    {
        "ID": 6146,
        "city": "Phoenix",
        "map": {
            "address": "2501 North 7th Street, Phoenix, AZ, United States",
            "lat": "33.4749197",
            "lng": "-112.06473499999998"
        },
        "name": "The Office Pile",
        "slug": "the-office-pile"
    },
    {
        "ID": 6134,
        "city": "Erie",
        "map": {
            "address": "1001 State Street, Erie, PA, United States",
            "lat": "42.1255466",
            "lng": "-80.08200139999997"
        },
        "name": "Radius CoWork",
        "slug": "radius-cowork"
    },
    {
        "ID": 6084,
        "city": "Felton",
        "map": {
            "address": "6265 Highway 9, Felton, CA, United States",
            "lat": "37.0524533",
            "lng": "-122.07324030000001"
        },
        "name": "The Satellite Felton",
        "slug": "the-satellite-felton"
    },
    {
        "ID": 6056,
        "city": "Seattle",
        "map": {
            "address": "115 N 85th St, Seattle, WA, United States",
            "lat": "47.6903953",
            "lng": "-122.35744039999997"
        },
        "name": "Works Progress, Inc.",
        "slug": "works-progress-inc"
    },
    {
        "ID": 6036,
        "city": "Los Gatos",
        "map": {
            "address": "20 South Santa Cruz Avenue, Los Gatos, CA 95030, USA",
            "lat": "37.22238566907715",
            "lng": "-121.98413882632826"
        },
        "name": "The Satellite Los Gatos",
        "slug": "the-satellite-los-gatos"
    },
    {
        "ID": 6031,
        "city": "Austin",
        "map": {
            "address": "1700 South Lamar, Suite 338 austin texas",
            "lat": "30.2515552",
            "lng": "-97.76643079999997"
        },
        "name": "fibercove",
        "slug": "fibercove"
    },
    {
        "ID": 6011,
        "city": "Miami",
        "map": {
            "address": "66 W Flagler St, Miami, FL, United States",
            "lat": "25.7738923",
            "lng": "-80.19491679999999"
        },
        "name": "StartHub Miami - Coworking and Business Development Center",
        "slug": "6011"
    },
    {
        "ID": 5999,
        "city": "Santa Monica",
        "map": {
            "address": "3110 Main Street, Santa Monica, CA 90405, USA",
            "lat": "33.99735125373695",
            "lng": "-118.47954511642456"
        },
        "name": "The Satellite Santa Monica",
        "slug": "the-satellite-santa-monica"
    },
    {
        "ID": 5992,
        "city": "Fort Lauderdale",
        "map": {
            "address": "333 Las Olas Way, Fort Lauderdale, FL 33301, USA",
            "lat": "26.11827709520849",
            "lng": "-80.14178059580081"
        },
        "name": "Axis Space",
        "slug": "axis-space"
    },
    {
        "ID": 5966,
        "city": "New York, New York",
        "map": {
            "address": "394 Broadway, New York, NY, United States",
            "lat": "40.7183436",
            "lng": "-74.00236480000001"
        },
        "name": "Impact Hub NYC",
        "slug": "impact-hub-nyc"
    },
    {
        "ID": 5899,
        "city": "Santa Monica",
        "map": {
            "address": "BLANKSPACES Santa Monica, 1450 2nd Street, Santa Monica, CA, United States",
            "lat": "34.01366",
            "lng": "-118.496103"
        },
        "name": "BLANKSPACES Santa Monica",
        "slug": "blankspaces-santa-monica"
    },
    {
        "ID": 5820,
        "city": "Honolulu",
        "map": {
            "address": "307a Kamani Street, Honolulu, HI, United States",
            "lat": "21.2965676",
            "lng": "-157.8569653"
        },
        "name": "BoxJelly",
        "slug": "boxjelly"
    },
    {
        "ID": 5815,
        "city": "Mankato, MN",
        "map": {
            "address": "227 East Main Street, Mankato, MN, United States",
            "lat": "44.1662913",
            "lng": "-94.0005741"
        },
        "name": "Envision Lab",
        "slug": "envision-lab"
    },
    {
        "ID": 5726,
        "city": "Marina Del Rey",
        "map": {
            "address": "4054 Del Rey Avenue, Marina del Rey, CA, United States",
            "lat": "33.9894894",
            "lng": "-118.44594219999999"
        },
        "name": "Fox Offices",
        "slug": "fox-offices"
    },
    {
        "ID": 5630,
        "city": "Stamford, CT",
        "map": {
            "address": "290 Harbor Drive, Stamford, CT, United States",
            "lat": "41.0333743",
            "lng": "-73.53516339999999"
        },
        "name": "Workpoint Stamford",
        "slug": "workpoint-stamford"
    },
    {
        "ID": 5421,
        "city": "Charlottesville",
        "map": {
            "address": "969 2nd Street Southeast, Charlottesville, VA, United States",
            "lat": "38.0239706",
            "lng": "-78.48337879999997"
        },
        "name": "Studio IX ",
        "slug": "studio-ix"
    },
    {
        "ID": 5374,
        "city": "South Lake Tahoe",
        "map": {
            "address": "1038 Ski Run Boulevard, South Lake Tahoe, CA, United States",
            "lat": "38.9473336",
            "lng": "-119.956706"
        },
        "name": "Tahoe Mountain Lab",
        "slug": "tahoe-mountain-lab"
    },
    {
        "ID": 5275,
        "city": "Menlo Park",
        "map": {
            "address": "1370 Willow Road, Menlo Park, CA 94025, USA",
            "lat": "37.478195742694986",
            "lng": "-122.15097427368164"
        },
        "name": "The Pad",
        "slug": "silicon-valley-pad"
    },
    {
        "ID": 5052,
        "city": "Richmond",
        "map": {
            "address": "409 E Main St, Richmond, VA, United States",
            "lat": "37.540307",
            "lng": "-77.44035099999996"
        },
        "name": "Gather ",
        "slug": "gather"
    },
    {
        "ID": 4861,
        "city": "Redwood City",
        "map": {
            "address": "425 Broadway Street, Redwood City, CA, United States",
            "lat": "37.4849487",
            "lng": "-122.2032155"
        },
        "name": "GSVlabs",
        "slug": "nestgsv"
    },
    {
        "ID": 4846,
        "city": "San Francisco",
        "map": {
            "address": "739 Bryant Street, San Francisco, CA, United States",
            "lat": "37.7768798",
            "lng": "-122.40093489999998"
        },
        "name": "SHARED",
        "slug": "shared"
    },
    {
        "ID": 3242,
        "city": "York",
        "map": {
            "address": "155 West Market Street, York, PA, United States",
            "lat": "39.961355",
            "lng": "-76.73138069999999"
        },
        "name": "CoWork155",
        "slug": "cowork155"
    },
    {
        "ID": 4607,
        "city": "Denver",
        "map": {
            "address": "3461 Ringsby Court, Denver, CO, United States",
            "lat": "39.7720246",
            "lng": "-104.98161299999998"
        },
        "name": "Assembly",
        "slug": "assembly-2"
    },
    {
        "ID": 4562,
        "city": "Nashville",
        "map": {
            "address": "615 Main Street, Nashville, TN, United States",
            "lat": "36.174508",
            "lng": "-86.76190400000002"
        },
        "name": "Center 615",
        "slug": "center-615"
    },
    {
        "ID": 4545,
        "city": "West Bloomfield",
        "map": {
            "address": "7805 Cooley Lake Road, West Bloomfield Township, MI, United States",
            "lat": "42.61471299999999",
            "lng": "-83.439141"
        },
        "name": "Visionary Meetings",
        "slug": "visionary-meetings"
    },
    {
        "ID": 4444,
        "city": "Marina del Rey",
        "map": {
            "address": "4132 Del Rey Ave, Marina del Rey, CA, United States",
            "lat": "33.9881839",
            "lng": "-118.44421249999999"
        },
        "name": "BizHaus",
        "slug": "bizhaus"
    },
    {
        "ID": 4313,
        "city": "Seattle",
        "map": {
            "address": "1400 3rd Avenue, Seattle, WA 98101, USA",
            "lat": "47.609020248696815",
            "lng": "-122.33692646026611"
        },
        "name": "Red Element Collective",
        "slug": "red-element-collective"
    },
    {
        "ID": 4300,
        "city": "San Francisco",
        "map": {
            "address": "1714 Stockton Street, San Francisco, CA, United States",
            "lat": "37.8017235",
            "lng": "-122.40915180000002"
        },
        "name": "SpherePad on Stockton",
        "slug": "spherepad-on-stockton"
    },
    {
        "ID": 3916,
        "city": "Anchorage",
        "map": {
            "address": "601 W 5th Avenue, Floor 2, Anchorage, AK 99501",
            "lat": "61.2178554",
            "lng": "-149.8939383"
        },
        "name": "The Boardroom",
        "slug": "the-boardroom"
    },
    {
        "ID": 1687,
        "city": "Tarrytwon",
        "map": {
            "address": "21 North Broadway, Tarrytown, NY, United States",
            "lat": "41.0770856",
            "lng": "-73.85805690000001"
        },
        "name": "W@tercooler",
        "slug": "wtercooler"
    },
    {
        "ID": 3065,
        "city": "Raleigh",
        "map": {
            "address": "310 S Harrington St, Raleigh, NC, United States",
            "lat": "35.7766697",
            "lng": "-78.64531640000001"
        },
        "name": "HQ Raleigh",
        "slug": "hq-raleigh"
    },
    {
        "ID": 3703,
        "city": "San Juan",
        "map": {
            "address": "151 Calle San Francisco, San Juan, Puerto Rico",
            "lat": "18.4654684",
            "lng": "-66.11694260000002"
        },
        "name": "Piloto 151",
        "slug": "piloto-151"
    },
    {
        "ID": 3659,
        "city": "Chicago",
        "map": {
            "address": "1035 W Lake St, Chicago, IL, United States",
            "lat": "41.88539360000001",
            "lng": "-87.65357010000002"
        },
        "name": "Forum Coworking",
        "slug": "forum-coworking"
    },
    {
        "ID": 187,
        "city": "Philadelphia",
        "map": {
            "address": "22 N 3rd St, Philadelphia, PA, United States",
            "lat": "39.9509192",
            "lng": "-75.14586079999998"
        },
        "name": "Indy Hall",
        "slug": "indy-hall"
    },
    {
        "ID": 3528,
        "city": "San Diego",
        "map": {
            "address": "330 A Street, San Diego, CA, United States",
            "lat": "32.7190889",
            "lng": "-117.16144610000003"
        },
        "name": "Co-Merge",
        "slug": "co-merge"
    },
    {
        "ID": 3516,
        "city": "State College",
        "map": {
            "address": "243 South Allen Street, State College, PA, United States",
            "lat": "40.7931106",
            "lng": "-77.85988079999998"
        },
        "name": "New Leaf Initiative",
        "slug": "new-leaf-initiative"
    },
    {
        "ID": 3507,
        "city": "Stamford",
        "map": {
            "address": "845 Canal Street, Stamford, CT, United States",
            "lat": "41.04317440000001",
            "lng": "-73.5322971"
        },
        "name": "COMRADITY Strategy and Creative Resource Center",
        "slug": "comradity-studio"
    },
    {
        "ID": 3217,
        "city": "Grand Rapids",
        "map": {
            "address": "99 Monroe Ave NW, Grand Rapids, MI, United States",
            "lat": "42.965028",
            "lng": "-85.672889"
        },
        "name": "Worklab by Custer",
        "slug": "worklab-by-custer"
    },
    {
        "ID": 3001,
        "city": "Boston",
        "map": {
            "address": "867 Boylston Street, Boston, MA, United States",
            "lat": "42.3486035",
            "lng": "-71.0834367"
        },
        "name": "Idea Space: Boutique Shared Workspace and Private Offices in the Back Bay",
        "slug": "idea-space"
    },
    {
        "ID": 2982,
        "city": "Boston",
        "map": {
            "address": "101 Arch Street, Boston, MA, United States",
            "lat": "42.355006",
            "lng": "-71.0586323"
        },
        "name": "Coalition: Downtown",
        "slug": "coalition-downtown"
    },
    {
        "ID": 1094,
        "city": "Brooklyn",
        "map": {
            "address": "55 Hope Street, Brooklyn, NY, United States",
            "lat": "40.7133449",
            "lng": "-73.95555100000001"
        },
        "name": "Makeshift Society Brooklyn",
        "slug": "makeshift-society-brooklyn"
    },
    {
        "ID": 2964,
        "city": "Austin",
        "map": {
            "address": "1309 E 7th St, Austin, TX, United States",
            "lat": "30.2645229",
            "lng": "-97.72846170000003"
        },
        "name": "Conjunctured",
        "slug": "conjunctured"
    },
    {
        "ID": 2955,
        "city": "San Diego",
        "map": {
            "address": "3060 University Avenue, San Diego, CA, United States",
            "lat": "32.74874",
            "lng": "-117.12851"
        },
        "name": "Union North Park",
        "slug": "union-north-park"
    },
    {
        "ID": 2938,
        "city": "Asbury Park",
        "map": {
            "address": "619 Lake Ave Asbury Park NJ 07712",
            "lat": "40.2151671",
            "lng": "-74.01076419999998"
        },
        "name": "Cowerks",
        "slug": "cowerks"
    },
    {
        "ID": 2923,
        "city": "Madison",
        "map": {
            "address": "100 State Street, Madison, WI, United States",
            "lat": "43.0748927",
            "lng": "-89.38706460000003"
        },
        "name": "100state",
        "slug": "100state"
    },
    {
        "ID": 2919,
        "city": "Madison",
        "map": {
            "address": "7 North Pinckney Street, Madison, WI, United States",
            "lat": "43.0757335",
            "lng": "-89.38339930000001"
        },
        "name": "Horizon Coworking",
        "slug": "horizon-coworking"
    },
    {
        "ID": 2912,
        "city": "Seattle",
        "map": {
            "address": "2226 Eastlake Ave E, Seattle, WA, United States",
            "lat": "47.6391134",
            "lng": "-122.3255269"
        },
        "name": "Coworking Eastlake",
        "slug": "coworking-eastlake"
    },
    {
        "ID": 2896,
        "city": "Grand Rapids",
        "map": {
            "address": "38 Fulton St W, Grand Rapids, MI, United States",
            "lat": "42.96300919999999",
            "lng": "-85.66951999999998"
        },
        "name": "The Factory",
        "slug": "the-factory"
    },
    {
        "ID": 2855,
        "city": "Springfield",
        "map": {
            "address": "405 N Jefferson Ave, Springfield, MO, United States",
            "lat": "37.2119519",
            "lng": "-93.29040700000002"
        },
        "name": "Originate Coworking",
        "slug": "freshcube"
    },
    {
        "ID": 2825,
        "city": "Amesbury",
        "map": {
            "address": "36 Main St, Amesbury, MA, United States",
            "lat": "42.857283",
            "lng": "-70.93045799999999"
        },
        "name": "Workspace 36",
        "slug": "workspace-36"
    },
    {
        "ID": 2809,
        "city": "Brooklyn",
        "map": {
            "address": "905 Atlantic Avenue, Brooklyn, NY, United States",
            "lat": "40.6811362",
            "lng": "-73.96283690000001"
        },
        "name": "FREECANDY Creative Space",
        "slug": "freecandy-creative-space"
    },
    {
        "ID": 2753,
        "city": "New York City",
        "map": {
            "address": "1150 Avenue of the Americas, New York, NY, United States",
            "lat": "40.756572",
            "lng": "-73.9828253"
        },
        "name": "Ensemble Coworking Space",
        "slug": "ensemble-coworking-space"
    },
    {
        "ID": 2387,
        "city": "Santa Maria",
        "map": {
            "address": "429 E Main Street, Santa Maria, CA, United States",
            "lat": "34.953547",
            "lng": "-120.430028"
        },
        "name": "MIYB Spaces",
        "slug": "miyb-spaces"
    },
    {
        "ID": 2381,
        "city": "New York City",
        "map": {
            "address": "601 West 26th Street, Suite 325, New York City, New York",
            "lat": "40.7514867",
            "lng": "-74.00663960000003"
        },
        "name": "Centre for Social Innovation, Starrett-Lehigh",
        "slug": "centre-for-social-innovation-starrett-lehigh-2"
    },
    {
        "ID": 2214,
        "city": "San Francisco",
        "map": {
            "address": "235 Gough Street, San Francisco, CA, United States",
            "lat": "37.7755141",
            "lng": "-122.42301120000002"
        },
        "name": "Makeshift Society",
        "slug": "makeshift-society"
    },
    {
        "ID": 2147,
        "city": "Chicago",
        "map": {
            "address": "2141 W North Ave, Chicago, IL, United States",
            "lat": "41.910387",
            "lng": "-87.68164860000002"
        },
        "name": "Free Range Office",
        "slug": "free-range-office"
    },
    {
        "ID": 1928,
        "city": "Chicago",
        "map": {
            "address": "73 West Monroe Street, Chicago, IL, United States",
            "lat": "41.880528",
            "lng": "-87.63028170000001"
        },
        "name": "Level Office",
        "slug": "level-office"
    },
    {
        "ID": 1951,
        "city": "Chicago",
        "map": {
            "address": "1286 N Milwaukee Ave, Chicago, IL, United States",
            "lat": "41.9051805",
            "lng": "-87.66935380000001"
        },
        "name": "Platform Coworking",
        "slug": "platform-coworking-2"
    },
    {
        "ID": 1938,
        "city": "Chicago",
        "map": {
            "address": "4422 N Ravenswood Ave, Chicago, IL, United States",
            "lat": "41.9623109",
            "lng": "-87.67455530000001"
        },
        "name": "Platform Coworking",
        "slug": "platform-coworking"
    },
    {
        "ID": 1858,
        "city": "Ventura",
        "map": {
            "address": "175 S. Ventura Ave #103A Ventura, CA 93001",
            "lat": "34.2785128",
            "lng": "-119.30096370000001"
        },
        "name": "Connect Ventura Coworking",
        "slug": "connect-ventura-coworking"
    },
    {
        "ID": 1811,
        "city": "Philadelphia",
        "map": {
            "address": "417 N 8th St, Philadelphia, PA, United States",
            "lat": "39.959012",
            "lng": "-75.15087500000004"
        },
        "name": "Venturef0rth",
        "slug": "venturef0rth"
    },
    {
        "ID": 1758,
        "city": "San Diego",
        "map": {
            "address": "9710 Scranton Road, San Diego, CA, United States",
            "lat": "32.897183",
            "lng": "-117.20355599999999"
        },
        "name": "Hera Hub Sorrento Mesa",
        "slug": "hera-hub-sorrento-mesa"
    },
    {
        "ID": 1744,
        "city": "Santa Monica",
        "map": {
            "address": "1001 Colorado Avenue, Santa Monica, CA, United States",
            "lat": "34.0185364",
            "lng": "-118.48635039999999"
        },
        "name": "The Writers Junction",
        "slug": "the-writers-junction"
    },
    {
        "ID": 1691,
        "city": "Brooklyn",
        "map": {
            "address": "279 Starr Street, Brooklyn, NY, United States",
            "lat": "40.706821",
            "lng": "-73.92174790000001"
        },
        "name": "Bat Haus",
        "slug": "bat-haus"
    },
    {
        "ID": 1678,
        "city": "Mountain View",
        "map": {
            "address": "883 N Shoreline Blvd, Mountain View, CA, United States",
            "lat": "37.406859",
            "lng": "-122.0775635"
        },
        "name": "DesignSpaces",
        "slug": "designspaces"
    },
    {
        "ID": 1665,
        "city": "Washington DC",
        "map": {
            "address": "920 U Street Northwest, Washington, DC 20001, USA",
            "lat": "38.91686983380924",
            "lng": "-77.0249082549708"
        },
        "name": "Affinity Lab",
        "slug": "affinity-lab"
    },
    {
        "ID": 1343,
        "city": "Stamford",
        "map": {
            "address": "175 Atlantic Street, Stamford, CT 06901, USA",
            "lat": "41.05285958018765",
            "lng": "-73.53962659835815"
        },
        "name": "Workspace Stamford",
        "slug": "workspace-stamford"
    },
    {
        "ID": 1562,
        "city": "Los Angeles",
        "map": {
            "address": "651 Clover St, Los Angeles, CA, United States",
            "lat": "34.0656529",
            "lng": "-118.22244999999998"
        },
        "name": "Droplabs",
        "slug": "droplabs"
    },
    {
        "ID": 1541,
        "city": "Long Beach",
        "map": {
            "address": "235 E Broadway, Long Beach, CA, United States",
            "lat": "33.769554",
            "lng": "-118.18998199999999"
        },
        "name": "WE Labs (Work Evolution Laboratories) ",
        "slug": "we-labs-work-evolution-laboratories"
    },
    {
        "ID": 1498,
        "city": "Jersey City",
        "map": {
            "address": "121 Newark Avenue, Jersey City, NJ, United States",
            "lat": "40.719911",
            "lng": "-74.043295"
        },
        "name": "Indiegrove",
        "slug": "indiegrove"
    },
    {
        "ID": 1489,
        "city": "Appleton",
        "map": {
            "address": "120 N Morrison St, Appleton, WI, United States",
            "lat": "44.262583",
            "lng": "-88.40407399999998"
        },
        "name": "The Avenue HQ",
        "slug": "the-avenue-hq"
    },
    {
        "ID": 1476,
        "city": "Loveland",
        "map": {
            "address": "411 Railroad Ave, Loveland, CO, United States",
            "lat": "40.3961413",
            "lng": "-105.076076"
        },
        "name": "The Armory",
        "slug": "the-armory"
    },
    {
        "ID": 1390,
        "city": "San Francisco",
        "map": {
            "address": "934 Howard Street, San Francisco, CA, United States",
            "lat": "37.780964",
            "lng": "-122.406"
        },
        "name": "StartupHouse",
        "slug": "startuphouse"
    },
    {
        "ID": 1377,
        "city": "Palo Alto",
        "map": {
            "address": "2225 East Bayshore Road, Palo Alto, CA, United States",
            "lat": "37.4500822",
            "lng": "-122.12093090000002"
        },
        "name": "Enerspace Palo Alto",
        "slug": "enerspace-palo-alto"
    },
    {
        "ID": 1381,
        "city": "Chicago",
        "map": {
            "address": "1046 West Kinzie Street, Chicago, IL, United States",
            "lat": "41.8893874",
            "lng": "-87.65394149999997"
        },
        "name": "Enerspace Chicago",
        "slug": "enerspace-chicago"
    },
    {
        "ID": 1370,
        "city": "Denver",
        "map": {
            "address": "2373 Central Park Blvd, Denver, CO, United States",
            "lat": "39.75136699999999",
            "lng": "-104.88995690000002"
        },
        "name": "SmartSpace",
        "slug": "smartspace"
    },
    {
        "ID": 1366,
        "city": "Reno",
        "map": {
            "address": "100 N Arlington Ave, Reno, NV, United States",
            "lat": "39.52532",
            "lng": "-119.81665199999998"
        },
        "name": "Reno Collective Coworking",
        "slug": "reno-collective-coworking"
    },
    {
        "ID": 1336,
        "city": "Miami",
        "map": {
            "address": "NE 1 St@NE 3 Av, Miami, FL 33132, USA",
            "lat": "25.775373137324365",
            "lng": "-80.18895149230957"
        },
        "name": "Miami Entrepreneurship Center (MEC261.ORG)",
        "slug": "miami-entrepreneurship-center-mec261-org"
    },
    {
        "ID": 1352,
        "city": "Lynchburg",
        "map": {
            "address": "Lynchburg, VA, United States",
            "lat": "37.4137536",
            "lng": "-79.14224639999998"
        },
        "name": "Momentum Coworking and Hackerspace",
        "slug": "momentum-coworking-and-hackerspace"
    },
    {
        "ID": 1334,
        "city": "Jacksonville",
        "map": {
            "address": "5 West Forsyth Street, Jacksonville, FL, United States",
            "lat": "30.3271328",
            "lng": "-81.65795320000001"
        },
        "name": "CoWork Jax",
        "slug": "cowork-jax"
    },
    {
        "ID": 1244,
        "city": "Los Angeles",
        "map": {
            "address": "529 S Broadway, Suite 4000, Los Angeles, CA, 90013 United States",
            "lat": "34.047588",
            "lng": "-118.25165300000003"
        },
        "name": "BLANKSPACES DTLA",
        "slug": "blankspaces-dtla"
    },
    {
        "ID": 1235,
        "city": "Los Angeles",
        "map": {
            "address": "5405 Wilshire Blvd, Los Angeles, CA, United States",
            "lat": "34.0625524",
            "lng": "-118.34623929999998"
        },
        "name": "BLANKSPACES LA",
        "slug": "blankspaces-la"
    },
    {
        "ID": 1136,
        "city": "Tempe",
        "map": {
            "address": "2070 E Apache Blvd, Tempe, AZ, United States",
            "lat": "33.414997",
            "lng": "-111.89727679999999"
        },
        "name": "I Verb Nouns Coworking",
        "slug": "i-verb-nouns-coworking"
    },
    {
        "ID": 1050,
        "city": "Duluth",
        "map": {
            "address": "3150 Main Street, Duluth, GA, United States",
            "lat": "34.0019807",
            "lng": "-84.1460085"
        },
        "name": "The Work Spot",
        "slug": "the-work-spot-2"
    },
    {
        "ID": 1046,
        "city": "Columbus",
        "map": {
            "address": "2997 Indianola Avenue, Columbus, OH 43202, USA",
            "lat": "40.02483870536911",
            "lng": "-83.00183844907383"
        },
        "name": "The Salt Mines",
        "slug": "the-salt-mines"
    },
    {
        "ID": 995,
        "city": "Port Townsend",
        "map": {
            "address": "237 Taylor Street, Port Townsend, WA, United States",
            "lat": "48.11487109999999",
            "lng": "-122.75696590000001"
        },
        "name": "The CoLab, Port Townsend",
        "slug": "the-colab-port-townsend"
    },
    {
        "ID": 884,
        "city": "New York City",
        "map": {
            "address": "601 West 26th Street, New York, NY, United States",
            "lat": "40.7512955",
            "lng": "-74.0067684"
        },
        "name": "Centre for Social Innovation - Starrett-Lehigh",
        "slug": "centre-for-social-innovation-starrett-lehigh"
    },
    {
        "ID": 861,
        "city": "Carrboro",
        "map": {
            "address": "106 South Greensboro, Suite E, Carrboro, NC, United States",
            "lat": "35.9098184",
            "lng": "-79.07260159999998"
        },
        "name": "Perch Studios Coworking",
        "slug": "perch-studios-coworking"
    },
    {
        "ID": 767,
        "city": "Asheville",
        "map": {
            "address": "60 N. Market Street C200 Asheville, NC  28801",
            "lat": "35.597884",
            "lng": "-82.55129899999997"
        },
        "name": "Mojo Coworking",
        "slug": "mojo-coworking"
    },
    {
        "ID": 731,
        "city": "Asheville",
        "map": {
            "address": "9 West Walnut Street, Asheville, NC, United States",
            "lat": "35.5965649",
            "lng": "-82.55252519999999"
        },
        "name": "TopFloorStudio ",
        "slug": "topfloorstudio"
    },
    {
        "ID": 684,
        "city": "Detroit",
        "map": {
            "address": "1570 Woodward Avenue, Detroit, MI, United States",
            "lat": "42.3356798",
            "lng": "-83.05045610000002"
        },
        "name": "Grand Circus Detroit",
        "slug": "grand-circus-detroit"
    },
    {
        "ID": 635,
        "city": "Santa Cruz",
        "map": {
            "address": "877 Cedar Street, Santa Cruz, CA, United States",
            "lat": "36.97394500000001",
            "lng": "-122.02769999999998"
        },
        "name": "Cruzioworks",
        "slug": "cruzioworks"
    },
    {
        "ID": 616,
        "city": "Pella",
        "map": {
            "address": "709 Main Street, Pella, IA, United States",
            "lat": "41.4053602",
            "lng": "-92.91651669999999"
        },
        "name": "Veel Hoeden- Where Many Hats Meet!",
        "slug": "veel-hoeden-where-many-hats-meet"
    },
    {
        "ID": 461,
        "city": "Chattanooga",
        "map": {
            "address": "701 Market Street, Chattanooga, TN, United States",
            "lat": "35.048194",
            "lng": "-85.30999400000002"
        },
        "name": "Society of Work",
        "slug": "society-of-work"
    },
    {
        "ID": 477,
        "city": "San Francisco",
        "map": {
            "address": "524 Union Street, San Francisco, CA, United States",
            "lat": "37.800704",
            "lng": "-122.40816849999999"
        },
        "name": "SpherePad on Union",
        "slug": "rezerv-it"
    },
    {
        "ID": 462,
        "city": "Seattle",
        "map": {
            "address": "1617 Boylston Avenue, Seattle, WA 98122, USA",
            "lat": "47.61588413576999",
            "lng": "-122.32351541519165"
        },
        "name": "Office Nomads",
        "slug": "office-nomads"
    },
    {
        "ID": 335,
        "city": "Beacon",
        "map": {
            "address": "291 Main Street, Beacon, NY, United States",
            "lat": "41.505775",
            "lng": "-73.971742"
        },
        "name": "BEAHIVE Beacon",
        "slug": "beahive-beacon"
    },
    {
        "ID": 303,
        "city": "Savannah",
        "map": {
            "address": "35 Barnard Street, Savannah, GA, United States",
            "lat": "32.08008",
            "lng": "-81.09423900000002"
        },
        "name": "ThincSavannah",
        "slug": "thincsavannah"
    },
    {
        "ID": 178,
        "city": "Denver",
        "map": {
            "address": "383 Corona St, Denver, CO, United States",
            "lat": "39.7218153",
            "lng": "-104.97432000000003"
        },
        "name": "Shift Workspaces",
        "slug": "shift-workspaces"
    },
    {
        "ID": 151,
        "city": "Los Angeles",
        "map": {
            "address": "418 Bamboo Lane, Los Angeles, CA, United States",
            "lat": "34.0659501",
            "lng": "-118.23737979999999"
        },
        "name": "Kleverdog Coworking",
        "slug": "kleverdog-coworking"
    },
    {
        "ID": 63,
        "city": "New York City",
        "map": {
            "address": "55 Broad St, Nova Iorque, NY, Estados Unidos",
            "lat": "40.625578",
            "lng": "-74.07721600000002"
        },
        "name": "Hive at 55",
        "slug": "hive-at-55"
    }
]

def create_space(space, space_details, address_data, features)
  rate = [25,30,35,40,45,50,55,60]
  new_space = Space.new(
    api_id: space[:ID],
    name: space[:name],
    street_address: space[:map][:address],
    city: space[:city], lat: space[:map][:lat].to_f,
    long: space[:map][:lng].to_f,
    daily_rate: rate[rand(0..7)],
    slug: space[:slug],
    host_id: User.find_by(first_name:"admin").id,
    state: address_data[0].state,
    zip: address_data[0].postal_code.to_i,
    description: space_details["description"].gsub(/<br\s*\/?>/, ''),
    img_url: space_details["cover-photo"]
  )
  new_space.features = features[rand(17)]
  new_space.save
  puts "SEEDED: id: #{new_space.api_id}, space: #{new_space.name}"
end

spaces[0..-1].each do |space|
    if !Space.all.find_by(name: space[:name])
      begin
        url_to_fetch = "https://coworkingmap.org/wp-json/spaces/united-states/#{space[:city].parameterize}/#{space[:slug]}"
        # byebug
        response = RestClient.get(url_to_fetch, {"Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvY293b3JraW5nbWFwLm9yZyIsImlhdCI6MTU3MTk1NTEyMiwibmJmIjoxNTcxOTU1MTIyLCJleHAiOjE1NzI1NTk5MjIsImRhdGEiOnsidXNlciI6eyJpZCI6IjI4MDIifX19.Fpx9IM3y4rbdLqRsDDQZpyf7zr88r-cvKZorrD09Mn8"})
      rescue
        puts "Bad Fetch - #{space[:ID]}, space: #{space[:name]}"
      next
      end
      space_details = JSON.parse(response.body)

      lat = space[:map][:lat].to_f
      long = space[:map][:lng].to_f

      address_data = Geocoder.search([lat,long])

      if address_data[0].data.key?("error")
        puts "Bad Address - #{space[:ID]}, space: #{space[:name]}"
      else
        create_space(space, space_details, address_data, features)
      end
    else puts "Space already seeded"
    end
end


if Feature.last.spaces.empty?
nums = (0..Space.all.length).to_a.shuffle.take(15).sort
Space.first.features << clothing
nums.each{|num| Space.all[num].features << clothing}
end
# t.string "name"
# t.string "street_address"
# t.string "city"
# t.string "state"
# t.integer "zip"
# t.float "lat"
# t.float "long"
# t.integer "daily_rate"
# t.text "description"
# t.integer "host_id"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.string "img_url"
# t.string "img_url2"
# t.string "img_url3"
# t.string "img_url4"
