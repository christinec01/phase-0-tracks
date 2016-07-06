class Santa # create a santa class
  attr_reader :example_ethnicity, :age
  attr_writer :age, :gender

  def initialize(gender, example_ethnicity)
    @example_ethnicity = example_ethnicity
    @gender = gender
    @age = rand(0..140)
    # puts 'Initializing Santa instance...'
  end
  def eat_milk_and_cookies(cookie)
    puts "that was a good #{cookie} cookie!!"
  end
  def speak
    puts "#{@gender} #{@example_ethnicity} Santa says: ho ho ho! Haaaaapy hollidays!"
    puts '================================================================'
  end
  def ager
    puts "This santa is #{age} years old!"
  end
  end
    def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(ranking)
    ranking.rotate(1)
end

reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzen']
example_ethnicities = ['Caucasian', 'European', 'Middle Eastern', 'Pacific Islander', 'Hispanic']
gender = ['Agender', 'Female', 'Bigender', 'Male', 'Female', 'Gender Fluid', 'N/A']
santas = []
# santas << Santa.new('agender', 'black')
# santas << Santa.new('female', 'Latino')
# santas << Santa.new('bigender', 'white')
# santas << Santa.new('male', 'Japanese')
# santas << Santa.new('female', 'prefer not to say')
# santas << Santa.new('gender fluid', 'Mystical Creature(Unicorn)')
# santas << Santa.new('NA', 'NA')

20.times do |i|
  santas << Santa.new(gender[rand(0..7)], example_ethnicities[rand(0..7)])
end
puts "There are now #{santas.length} Santas!"
puts 'The santas can speak...'
puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
santas.each do |santa|
  santa.speak
  santa.ager

end
