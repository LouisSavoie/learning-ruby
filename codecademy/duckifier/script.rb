print "Text to Duckify: "
user_input = gets.chomp

if (user_input.include? "s") || (user_input.include? "S")
  user_input.gsub!(/s/, "th")
  user_input.gsub!(/S/, "Th")
  puts "Duckified text: #{user_input}"
else
  puts "Your text does not contain any 's's."
  print "Text to Duckify: "
  user_input = gets.chomp
end