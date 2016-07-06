class Santa # create a santa class
  def eat_milk_and_cookies(cookie)
    puts "that was a good #{cookie} cookie!!"
  end

  def initialize(gender, example_ethnicity)
    @example_ethnicity = example_ethnicity
    @gender = gender
    @age = 0
    # puts 'Initializing Santa instance...'
  end

  def speak
    puts "#{@gender} #{@example_ethnicity} Santa says: ho ho ho!
    Haaaaapy hollidays!"
    puts '======================'
  end

  def age
    @age
  end
  def ethnicity
    @example_ethnicity
  end
  def set_age(age)

    @age = age
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def gender
    @gender
  end
  def gender_set(gender)
    @gender = gender
  end

  def get_mad_at(ranking)
    ranking.rotate(1)
  end
end

reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzen']
example_ethnicities = ['caucasian', 'european', 'middle eastern', 'pacific islander', 'hispanic']
gender = ['agender', 'female', 'bigender', 'male', 'female', 'gender fluid', 'N/A']
suit_color = %w(red mahogany yellow blue beige)
santas = []
# santas << Santa.new('agender', 'black')
# santas << Santa.new('female', 'Latino')
# santas << Santa.new('bigender', 'white')
# santas << Santa.new('male', 'Japanese')
# santas << Santa.new('female', 'prefer not to say')
# santas << Santa.new('gender fluid', 'Mystical Creature(Unicorn)')
# santas << Santa.new('NA', 'NA')

example_ethnicities.length.times do |i|
  santas << Santa.new(gender[i], example_ethnicities[i])
end
# santas.length do |santas|
# puts "There are now #{santas.length} Santas!"
# puts "the santas can speak..."
#
#   santas.speak
# end
# example_ethnicities.each do |example_ethnicity|
#   santas << Santa.new(gender, example_ethnicity)
#   p "This Santa is #{example_ethnicity}!"
#   puts "=========================="
# end

puts "There are now #{santas.length} Santas!"
puts 'the santas can speak...'
# santas.each do |santa|
#   santa.speak
#   p santa.age
# end

p santas[2].age
santas[2].set_age(50)
p santas[2].age
p santas[2].get_mad_at(reindeer_ranking)
p santas[2].gender
santas[2].gender_set("female")
p santas[2].gender
p santas[2].ethnicity

# gender.length.times do |i|
#   santas << Santa.new(gender[i], example_ethnicities[i])
#   puts "This santas is #{gender[i]}"
# end
