movies = {
    gladiator: 5
}

puts "What would you like to do?"
choice = gets.chomp

case choice
when "add"
    puts "Which movie would you like to add?"
    title = gets.chomp
    puts "What rating are you giving this movie (type 0 - 5)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    if movies[title.to_sym].nil?
    else
        puts "This movie already exists, sorry!"
    end
when "update"
    puts "Which movie are you updating?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "This movie does not exist, sorry!"
    else
        puts "What rating are you giving this movie (type 0 - 5)"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
    end
when "display"
    movies.each { |movie, rating| puts "#{movie}: #{rating}" }
when "delete"
    puts "Which movie would you like to delete?"
    title = gets.chomp
    if movies[title.to_sym]
        movies.delete(title)
    else
        puts "Sorry, that movie does not exist"
    end
else
    puts "Error!"
end
    
