wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false


puts "How many employees will you be processing today"
num_candidates = gets.chomp.to_i
i=0
until i>= num_candidates do
result =



	puts "What is your name?"
	name = gets.chomp
	fang_name = name == ("Drake Cula" || "Tu Fang")

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year = gets.chomp.to_i
	employee_age = (age + year)
	correct_age= employee_age == 2016

	puts "Would you like garlic bread for lunch?(y/n)"
	garlic_bread = gets.chomp
	yes_garlic_bread = garlic_bread == "y"

 	puts "Would you like to enrol in the company healthcare plan?(y/n)"
 	healthcare = gets.chomp
 	yes_healthcare = healthcare == "y"
 	good_liar = correct_age && yes_garlic_bread && yes_healthcare == true

	puts "Do you have any allergies? Please list them"
	allergies = gets.chomp


		 while allergies == "sunshine" do
		  puts "Candidate #{i} is probably a vampire"
		  break
		  end

		 employees = [
	if allergies =="sunshine"
		 		"probably a vampire!"
	elsif (correct_age && yes_garlic_bread || yes_healthcare) && !fang_name
 		 "probably not a vampire"


 	elsif (!correct_age && !yes_garlic_bread || !yes_healthcare)
 		"probably a vampire.."
 	elsif(!correct_age && !yes_garlic_bread && !yes_healthcare)
 		 "Almost certainly a vampire"

	elsif (good_liar && fang_name)
		 "Definitely a vampire"

	else
		p "Results inconclusive"
	end
	]



employees.each_with_index do |result, index|
  puts "Candidate #{index} is #{result}!"
  i+=1
	end
end
p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
