# Movie DB - A movie ratings database.

# Create a new hash for storing movies and their ratings.
movies = {
  "The Matrix": "5"
}

# Prompt user for commands.
puts "Input command:"
choice = gets.chomp

# Process the user's command.
case choice
  when "add"
    puts "Title?"
    title = gets.chomp
    puts "Rating?"
    rating = gets.chomp
    if movies[title.to_sym] != nil
      puts "That movie already exists!"
    else
      movies[title.to_sym] = rating.to_i
      puts "Added!"
    end
  when "update"
    puts "Title?"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "That movie does not exist!"
    else
      puts "New Rating?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "Updated!"
    end
  when "display"
    movies.each {|movie, rating| puts "#{movie}: #{rating}"}
  when "delete"
    puts "Title?"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "That movie does not exist!"
    else
      movies.delete(title.to_sym)
      puts "Deleted!"
    end
  else
    puts "Error!"
end