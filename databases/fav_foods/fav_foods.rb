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

#string delimiters

#create restaurants table (if not already there)

#add a test restaurant

#explore ORM

#use iteration to create many instances of restaurants

#update fields to include name, address, rating out of 5 stars, date of last visit

# add user interface that allows additional restaurant reviews to be added
