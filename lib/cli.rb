class CLI

  def call
    menu

  end

def menu
  puts "Hi! Welcome to Wine-r!"
  puts "We will show you the top wines for you and your budget!"
  puts "It's easy, just tell us if you like red or white, and your budget."
  puts "Enter 1 for red wine"
  puts "Enter 2 for white wine"
  puts "Enter 3 for a mixed list"
  puts "Type 'exit' to leave"

  input = nil
  while input != "exit"
  input = gets.strip.downcase
  case input
  when "1"
    puts "cool"
  when "2"
    puts "ok"
  when "3"
    puts 'wohooo'
  else
    puts "Invalid input. Please try again."
  end
end

end

end
