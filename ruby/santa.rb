class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :reindeer_ranking, :age

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  def speak
    puts "HO HO HO HAPPPY HOLIDAYS!"
  end
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}."
  end

  def celebrate_birthday
    @age = age.to_i+1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete_if {|i| i ==reindeer_name}
    @reindeer_ranking << reindeer_name
    @reindeer_ranking
    puts "Santa got mad at #{reindeer_name}."
  end
end

#Driver code for release 0
santa1 = Santa.new("agender", "aethnicity")
santa1.gender
santa1.eat_milk_and_cookies('peanut butter cookie')

#Driver code for release 1 to test gender, ethnicity, reindeer_ranking, and age attributes
#Refactored code for release 4 to generate random santas with access to age, gender and ethnicity properties 
example_ethnicity = ["Hispanic", "Spanish", "Russian", "Jamaican", "Costa Rican", "Caucasian", "Indian"]
example_gender = ["male", "female", "transgender", "gender fluid", "doesn't identify with a gender"]
santas = []
example_ethnicity.length.times do |i|
  santas << Santa.new(example_gender.sample,example_ethnicity.sample)
  santas
end
 santas.each do |santa|
   santa.age = rand(0..140)
    puts "Santa is #{santa.age} old"
    puts "Santa's ethnicity is #{santa.ethnicity}"
    puts "Santa's gender is #{santa.gender}"
    puts
end
# santa2 = Santa.new(example_gender.sample, example_ethnicity.sample)
# santa2.age = rand(0..140)
# puts santa2.age

puts "===========Testing ageing santa========="
puts "Santa number one was #{santa1.age} years old."
puts "The he had a birthday and now he's #{santa1.celebrate_birthday}"
puts "So, his new age is #{santa1.age}."
puts "=========Testing angery santa method on reindeer====="
puts "These are Santa's reindeer in order of favorite to least favorite: #{santa1.reindeer_ranking}"
puts "As you can see, he has been bumped: #{santa1.get_mad_at("Dasher")}"
puts "Now these are Santa's reindeer in order of favorite to lease favorite: #{santa1.reindeer_ranking}"

puts "===========Testing gender changing santa========="
 puts "Santa was a #{santa1.gender}"
 santa1.gender = "male"
 puts "Now Santa is a #{santa1.gender}"
puts "===========Testing santa ethnicity========="
puts "Santa's ethnicity is #{santa1.ethnicity}"
