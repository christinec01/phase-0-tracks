#requiring gems to run sql and faker.
# Random date in the past (up to maximum of N days)
# Faker dater for later use:

#Faker::Date.backward(14) #=> "Fri, 19 Sep 2014"
#Faker::Company.name #=> "Hirthe-Ritchie"
#Faker::Address.city #=> "Imogeneborough"
#Faker::Address.street_address #=> "282 Kevin Brook"
#Faker::Address.state #=> "California"

require 'sqlite3'
require 'faker'

#creating SQLite3 database
db = SQLite3::Database.new("restaurants.db")
db.results_as_hash = true

#string delimiters
create_restaurants_table_cmd = <<-SQL
create table if not exists restaurants(
  id integer primary key,
  name varchar(255),
  address varchar(255),
  rating int,
  date_visited varchar(255)
)
SQL
#create restaurants table (if not already there)
db.execute(create_restaurants_table_cmd)

# #add a test restaurant
#update fields to include name, address, rating out of 5 stars, date of last visit
# db.execute("INSERT INTO restaurants (name, address, rating, date_visited)
# VALUES ('Papas', '1234 Italiano Way', 1, 'June 3, 2014')")

#explore ORM

#use iteration to create many instances of restaurants
def create_ratings(db,name,address,rating)
date_visited = Faker::Date.backward(14).to_s
db.execute("Insert into restaurants (name, address, rating, date_visited) values (?, ?, ?, ?)", [name, address, rating, date_visited])
end

10.times do
  create_ratings(db,Faker::Company.name, Faker::Address.street_address, 3)
end

restaurants = db.execute("select * from restaurants")
restaurants.each do |restaurant|
  puts "You rated #{restaurant['name']} #{restaurant['rating']} star(s) out of 5 last time you were there which was on #{restaurant['date_visited']}."
end
# add user interface that allows additional restaurant reviews to be added
