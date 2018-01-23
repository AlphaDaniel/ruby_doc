module RubyDoc::CLI
#==============================================
  module UI
#==============================================
    def self.greeting
      puts "\n                 SIGNATURE GOES HERE".black
      puts "=".cyan*28 + "=".white*28
     
      puts "Enter a ".cyan + "word ".yellow + "associated with the Ruby Language & I will ".cyan
      puts "try to find a match in my database for you.".cyan
      puts "=".white*28 + "=".cyan*28
      
      puts "\You can also type".cyan + " 'b'".yellow + " to browse instead.".cyan + " Happy Hunting!".cyan
      
      puts "\n If You're Searching... Single Word Inputs Only Please ".colorize(color: :white, background: :cyan)
    end
#==============================================
    def self.mainControl
      input = gets.strip.to_s.downcase
      puts "input #{input} downcase Greenlight".green
      
      case input
      when "b"
        Doc.paginateALL
      else
        DataExtras.superSEARCH(input) 
      end
    end
#==============================================    
  end
#==============================================
end 
