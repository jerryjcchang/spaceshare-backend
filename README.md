# spaceshare-backend #


This is the Ruby on Rails Backend for Spaceshare - a mock-up concept for a membership-based service to find and book co-working spaces in the United States using data from the Coworking Map API.

Global Dependencies:

* Ruby 2.6.2 | Rails 5.2.4

### `Technology`

Ruby | Ruby on Rails | PostgreSQL

BCrypt | JWT | Geocoder | Email_Address


### `Getting Started`

* git clone <repo>
* bundle install
  
### `Create CoworkingMap API Account`
* Register for a CoWorkingMap API Account [here](https://coworkingmap.org/signup/).
* Store your username and password as variables in the seed file.

*Note: Don't push your seedfile with your login to github, use Rails 5.2 Credentials to secure your login info. 

### `Create and Setup The Database`
```ruby
rails db:create
rails db:migrate
rails db:seed
```
  
### `rails server`

Run ```rails server``` to run the server
Open [http://localhost:3000/api/v1/spaces](http://localhost:3000/api/v1/spaces) to view JSON data in the browser.


