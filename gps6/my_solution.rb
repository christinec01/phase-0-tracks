class VirusPredictor
  require_relative 'data_structor.rb'
  # Create any new instance of VirusPredictor with three arguments that become attributes:
  # state, population, and population density.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  #predicts the effects and speed of spread of a virus on an instance of virus predictor using population densitity, population, and state
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private
  # Takes population density, population and state parameters and depending on their values,
  # performs a calculation and returns a death total based on how the population and population
  # density relate to eachother.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #takes population densisty and state and runs logit to return a rate of speed of virus spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, pop_info|

  current_state = VirusPredictor.new(state, pop_info[:population_density], pop_info[:population])
  current_state.virus_effects
end


#great
#-------------------


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
  #rocket and colon- colon can only be symbols whereas rocket can be symbols, string or integers
# What does require_relative do? How is it different from require?
  #require_relative allows you to accesss a file located in the same directory
# What are some ways to iterate through a hash?
  #.each, .map
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  #the method was taking instance variables as arguments which was unncessary since the class already
  #has access to them.
# What concept did you most solidify in this challenge?
  # scope!!
