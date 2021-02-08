puts "Input text: "
text = gets.chomp

puts "Input redactions: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word.downcase == redact.downcase
    print "REDACTED "
  else
    print word + " "
  end
end