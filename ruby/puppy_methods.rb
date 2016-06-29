class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
  	integer.times {puts "Woof!"}
  end

  def roll_over
  	puts "Roll over."
  end

  def dog_years(human_years)
  	p human_years * 7
  end

  def play_dead
  	puts "I'm dead!"
  end
end

# driver code
puppy1 = Puppy.new
puppy1.fetch("ball")
puppy1.speak(3)
puppy1.roll_over
puppy1.dog_years(3)
puppy1.play_dead
