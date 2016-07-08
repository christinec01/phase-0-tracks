# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + ":("
#   end
#   def self.yell_happily(words)
#     words + "!!!" + ":D :D :D"
#   end
#   p self.yell_angrily("nooo")
#   p self.yell_happily("OMG YES")
# end
module Shout
  def happy
    puts "I'm just SO happy!"
  end
  def angry
    puts "I'm just SOO angry!"
  end
end
class Person
  include Shout
end
class Instructor
  puts "I'm an instructor."
  include Shout
end
person = Person.new
person.happy
person.angry

instructor = Instructor.new
instructor.happy
