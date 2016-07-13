# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#A method that takes another file as input and returns the contect of that file by giving the
#file that require_relative is being run in access to the content.
require_relative 'state_data'

class VirusPredictor
  #Make a new VirusPredictor instance that takes state_of_origin, population_density and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Wrapper method that calls predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

private

  #Method that returns the number of deaths based on conditional logic run on the population density.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    #based on the population density, the .floor method is called on the product and string interpolation
    #is used to print the state and the number of deaths.
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

  #A method that takes population_density and state, depending on the density the speed is increased by a certain
  #amount then the speed and state are interpolated in a puts statement that is returned.
  def speed_of_spread(population_density, state) #in months
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
 STATE_DATA.each do |state_name, state_info|
   # p state_name
   # p state_info
   state = state_name
   state_info_hash = state_info

   state = VirusPredictor.new(state, state_info_hash[:population_density], state_info_hash[:population])
   state.virus_effects

 end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
