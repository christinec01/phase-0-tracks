class Game
  def initialize(secret_phrase)
    @secret_phrase = secret_phrase.split("")
    @user_array = make_blank_user_array(secret_phrase)
    @user_guesses = 0
  end

  def make_blank_user_array(secret_phrase)
    @secret_phrase.map do |letter|
      "-"
    end
  end

  def check_letter_in_secret_word_and_user_guess(user_guess)
    if @secret_phrase.include?(user_guess)#1. check if the user_guess exists in the secret_phrase
      p correct_guess_indicies = find_all_indicies(user_guess) #will return an number
      correct_guess_indicies.each do |letter_location|
        @user_array[letter_location] = user_guess
      end
    end #3. In the user guess array replay the "-" with the letter at the corresponding index
    @user_array #4. Return the user guess array
  end

  def find_all_indicies(user_guess)
    @secret_phrase.each_index.select{|i| @secret_phrase[i] == user_guess}
  end
  # h e l l o
  # _ _ _ _ _

  def handle_guesses(user_guess)
    check_letter_in_secret_word_and_user_guess(user_guess)
    @user_guesses += 1
    if @user_array.join("") == @secret_phrase.join("")
      p you_win
    elsif @user_guesses>@secret_phrase.length
      p you_lose
    else
      @user_array
    end
      @user_array
  end

  def you_lose
    return "Sorry, you are out of guesses"
  end

  def you_win
    return "you've won: #{@user_array.join("")}"
  end
end



p game = Game.new("hello")
puts "=======handle double letters test case==========="
user_guess= "h"

p game.handle_guesses(user_guess)
user_guess = "o"
p game.handle_guesses(user_guess)
user_guess = "l"
p game.handle_guesses(user_guess)
user_guess = "l"
p game.handle_guesses(user_guess)
user_guess = "e"
p game.handle_guesses(user_guess)

puts "======= you've won test case==========="
p game = Game.new("pen")
user_guess= "e"
p game.handle_guesses(user_guess)
user_guess = "n"
p game.handle_guesses(user_guess)
user_guess = "p"
p game.handle_guesses(user_guess)

puts " =======you lose test case==========="

p game = Game.new("pen")
user_guess= "o"
p game.handle_guesses(user_guess)
user_guess = "8"
p game.handle_guesses(user_guess)
user_guess = "J"
p game.handle_guesses(user_guess)
user_guess = "H"
p game.handle_guesses(user_guess)
