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

flatiron = Space.find_or_create_by(name: "Flatiron School",
                        street_address:"1440 G St NW",
                        city: "Washington",
                        state: "DC",
                        zip: "20005",
                        lat: 38.8982342,
                        long: -77.032672,
                        description: "Coding bootcamp campus with individual workstations, group desks, and conference rooms. Desks have mounted monitors, TV's available upon request.",
                        hourly_rate: 35,
                        host_id: 1
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



