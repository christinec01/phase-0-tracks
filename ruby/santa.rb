class Santa
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

end

#Driver code for release 0
santa1 = Santa.new("agender","aethnicity")
santa1.speak
santa1.eat_milk_and_cookies('peanut butter cookie')

#Driver code for release 1 to test gender, ethnicity, reindeer_ranking, and age attributes
example_ethnicity = ["Hispanic", "Spanish", "Russian", "Jamaican", "Costa Rican", "Caucasian", "Indian"]
example_gender = ["male", "female", "transgender", "gender fluid", "doesn't identify with a gender"]
santas = []
example_ethnicity.length.times do |i|
  santas << Santa.new(example_gender[i],example_ethnicity[i])
  santas
end
 santas.each do |santa|
  p santa
end
