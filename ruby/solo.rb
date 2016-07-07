class Magical_Unicorn # Magical unicorns class
    attr_reader :gender, :age
    attr_accessor :horn_color

  def initialize(age, horn_color, gender) # attributes:
    @age = rand(0..300) # age
    @horn_color = horn_color # horn color
    @gender = gender # gender
  end
 #unicorns methods
  def sparkle#sparkle method
    puts "#{@horn_color}-horned Unicorn is now ~*~*SPARKLY*~*~"#makes the unicorn sparkly
  end
  #speak method
  def speak(string)#makes the unicorn say "hello! I'm a magical unicorn!"
    @speak = string
    puts "#{@horn_color} unicorn says: #{@speak}!"
  end
  def color_ator(color)#color-ator method
    @color_ator = color
    puts "This unicorn's horn color was #{@horn_color}, now its #{@color_ator}!"#has the unicorn state its horn color, then change it to a new color
  end
end
# unicorn_1 = Magical_Unicorn.new(12,"red", "female")
# p unicorn_1.age
# unicorn_1.horn_color = 'Blue'
# p unicorn_1.horn_color
# unicorn_1.speak("hi")
# unicorn_1.color_ator("yellow")
unicorns = [] #creating an empty unicorns array to store these magical creatures
puts "Hello! Would you like to create some unicorns?!(y/n)"
  more_unicorns = "y"
  unicorns_desired = gets.chomp
      while unicorns_desired == more_unicorns
      puts "Great! What color horn would you like it to have?"
      @horn_color = gets.chomp
      puts "what gender unicorn would you like? Female, Male, or Sparklehorse?"
      @gender = gets.chomp
      unicorns << Magical_Unicorn.new(@age,@horn_color, @gender)
      puts "Would you like to make another unicorn?"
      unicorns_desired = gets.chomp
      end
      p unicorns
