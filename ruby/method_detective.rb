# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

 puts "zom".gsub "o", "oo"
# => “zoom”

puts "enhance".center(20)
# => "    enhance    "

 puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

 a = "the usual"
 puts a << " suspects"
#=> "the usual suspects"

a = " suspects"
puts a.prepend("the usual")
# => "the usual suspects"

puts "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

a = "The mystery of the missing first letter"
puts a[1..-1]
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"
puts "z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)

a = "How many times does the letter 'a' appear in this string?"
puts a.count("a")
# => 4
#adding Tyler in comments
