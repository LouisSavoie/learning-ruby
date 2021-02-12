# Histogram - Creates a histogram that shows word frequency in the user's input.

# Get user input and save to variable
puts "Enter some text:"
text = gets.chomp

# Create array of words from text
words = text.split(" ")

# Create a new hash to store the word frequencies
frequencies = Hash.new(0)

# Iterate over the array and add frequencies to the hash
words.each do |word|
  frequencies[word] += 1
end

# Sort frequencies hash
frequencies = frequencies.sort_by do |word, freq|
  freq
end
frequencies.reverse!

# Iterate over frequencies hash and print result
frequencies.each do |word, freq|
  puts word + " " + freq.to_s
end