puts "Initial amount:"
initial = gets.chomp.to_i

puts "Annual contribution:"
contribution = gets.chomp.to_i

puts "Estimated annual growth %:"
yearly_growth = (gets.chomp.to_f / 100) + 1

puts "How many years?"
years = gets.chomp.to_i

results = [initial]

years.times {results.push((results[results.length() - 1] + contribution) * yearly_growth)}

puts results[1..results.length - 1]

# use math.floor
# write test variables
# compare online calculators
