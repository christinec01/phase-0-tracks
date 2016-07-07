class Magical_Unicorn # Magical unicorns class
    attr_reader :gender, :age
    attr_accessor :horn_color

  def initialize(age, horn_color, gender) # attributes:
    @age = age # age
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
unicorn_1 = Magical_Unicorn.new(12,"red", "female")
p unicorn_1.age
unicorn_1.horn_color = 'Blue'
p unicorn_1.horn_color
unicorn_1.speak("hi")
unicorn_1.color_ator("yellow")
