# Alphabetizer - Sorts an array in either ascending of descending order.

def alphabetize(arr, rev=false)
	# Sort array in ascending order.
	arr.sort!
	# If rev parameter is pass as true, reverse sort to descending order and return it. Else, return it in ascending order.
	if rev == true
		arr.reverse!
	else
		return arr
	end
end

# Example array
numbers = [5,4,6,7,9,3,2,8,1,0]

# Printing to console.
puts alphabetize(numbers)
puts alphabetize(numbers, true)