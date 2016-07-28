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

module Talk
  def Greeting
    puts "hello there!"
  end
end
class Person
  include Shout
  include Talk
end
class Instructor
  puts "I'm an instructor."
  include Shout
end
person = Person.new
person.happy
person.angry
person.Gsreeting
instructor = Instructor.new
instructor.happy
