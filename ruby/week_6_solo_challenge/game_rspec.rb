require_relative 'game.rb'
describe Game do
  let(:game){Game.new("hello")}

  it "creates a new user array with dashes who's length is the length of the secret_phrase" do
    expect(game.make_blank_user_array("hello")).to eq ["-","-","-","-","-"]
  end

  it "updates the user_guess array when a correct letter is guessed" do
    expect(game.check_letter_in_secret_word_and_user_guess("h")).to eq ["h","-","-","-","-"]
  end
  it "gives feedback to the user if a correct letter is guessed" do
    expect(game.handle_guesses("h")).to eq ["h","-","-","-","-"]
  end
  it "tells you you've won" do
    expect(game.you_win).to eq "you've won: -----"
  end
  it "finds index value for all incidences of a word" do
    expect(game.find_all_indicies("l")).to eq [2,3]
  end
  it "informs player they're out of guesses" do
    expect(game.you_lose).to eq "Sorry, you are out of guesses"
  end
end
