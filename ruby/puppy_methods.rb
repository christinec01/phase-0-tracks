#release zero and one
class Puppy


  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times do
      p 'Woof!'
    end
  end

  def roll_over
    puts "**rolls over**"
  end

  def dog_years(int)
    p int * 7
  end

  def feed_dog(breed, food)
    puts "I'm a #{breed} and I like to eat #{food}."
  end



end

bear = Puppy.new
bear.fetch('toy')
bear.speak(3)
bear.roll_over
bear.dog_years(7)
bear.feed_dog('lab', 'kibble')

class Cats
  def initialize
  end

  def purr(cat_name)
     "My name is #{cat_name} and I'm purring."
  end

  def eat
    "~Eats~"
  end
end

kitty = Cats.new
kitty_array = []
50.times do
  str = kitty.purr('mimi')
  str
  kitty_array << str
end
p kitty_array

kitty_array.each do |i|
  puts "this kitty #{kitty.eat}"
end
