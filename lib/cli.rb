<<<<<<< HEAD
class WineR::CLI

  def call
      list_wines
      menu
      goodbye
    end

    def list_wines
      puts center("Welcome to Wine-R")
      puts ""
      puts "  Today's Top Wines:"
      puts ""
      @wines = WineR::Wine.list
      @wines.each.with_index(1) do |wine, i|
        puts " #{i}. #{wine.name} - #{wine.rating_price}"
      end
    end



    def menu
      current_year = Date.today.year
      input = nil
      while input != "exit"
        puts ""
        puts wrap("Enter the number of wine you'd like more info on, 'list' to see today's wines again or 'exit'. For the top wines of #{current_year} enter 'year': ")
        puts ""
        input = gets.strip.downcase


      if input.to_i > 0
        the_wine = @wines[input.to_i - 1]
          puts ""
          puts "#{input.to_i}. #{the_wine.name} - #{the_wine.rating_price}"
          puts center("Description")
          puts ""
          puts wrap("#{the_wine.description}").split('—')
        elsif input == "list"
          list_todays_wines
        elsif input == "year"
          list_years_wines
        elsif input != "exit"
          puts "Your entry is invalid."
        end
      end
    end

    def goodbye
      puts ""
      puts "Thanks for coming! Cheers!"
      puts ""
    end

    def center(string, c = "-")
      string = " #{string} " if string != ""
      until string.length >= 40
        string.prepend(c)
        string << (c)
      end
      string.prepend("\n")
    end

    def wrap(s, width=70)
  	  s.gsub(/(.{1,#{width}})(\s+|\Z)/, "\\1\n")
  	end

  end
=======
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
>>>>>>> a5a9c0e56c5e43b019ddc5aa00f7fa770277fd7a
