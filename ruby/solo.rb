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
  def speak#makes the unicorn say "hello! I'm a magical unicorn!"
    puts "#{@horn_color} unicorn says hello! I'm a magical unicorn!"
  end
  def space
    puts "#{@horn_color} unicorn is #{@age} and is a #{@gender}!"
  end
  def horn_colors
    puts "Great! What color horn would you like it to have?"
      @horn_color = gets.chomp
    puts "You now how have a #{@gender} unicorn with a #{@horn_color} horn."
    end
    def unicorn_gender
      puts "What gender unicorn would you like?? female, male shimmery...anything you'd like!"
      @gender = gets.chomp
    end
end
  unicorns = [] #creating an empty unicorns array to store these magical creatures

  puts "Hello! Would you like to create some unicorns?!(y/n)"
      more_unicorns = "y"
      unicorns_desired = gets.chomp

  while unicorns_desired == more_unicorns
    unicorn = Magical_Unicorn.new(@age,@horn_color, @gender)
    unicorns << unicorn
      unicorn.unicorn_gender #prompts user to assign a gender
      unicorn.horn_colors #prompts user to assign a horn color
    puts "Would you like to make another unicorn?"
      unicorns_desired = gets.chomp
  end

    puts "Would you like to make these unicorns sparkle?"
        sparkle = gets.chomp
      if sparkle == "y"
        unicorns.each do |unicorn|
        unicorn.sparkle
      end
    end
    puts "Would you like to change a unicorn's horn color?"
        horn = gets.chomp
        if horn == "y"
          puts "which unicorn would you like to change? Please enter its index number."
            changing_unicorn = gets.chomp.to_i
          unicorns[changing_unicorn].horn_colors
        end
    puts "Would you like the unicorns to speak?"
      words = gets.chomp
      if words == "y"
        unicorns.each do |unicorn|
          unicorn.speak
        end
      end
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts ""
  puts "Here are your beautiful unicorns!"
  puts ""
   unicorns.each do |unicorn|
    unicorn.space
end
