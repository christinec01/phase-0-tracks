module Shout
  def self.yell_angrily(words)
    words + "!!!" + ":("
  end
  def self.yell_happily(words)
    words + "!!!" + ":D :D :D"
  end
  p self.yell_angrily("nooo")
  p self.yell_happily("OMG YES")
end
