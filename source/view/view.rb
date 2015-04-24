require 'pry'
class View
  def self.start
    print "*"*25 + "\n"
    print "Welcome to FLASCII" + "\n"
    print "*"*25 + "\n"
    print "It searches through Flickr's API" + "\n"
    print "and outputs the searched picture in ASCII form." +"\n"
    puts ""

  end

  def self.user_search_prompt
    print "please enter a single word: "
    input = gets.chomp
  end

  def self.loading
    found = "Found"
    print "searching"
    5.times do |dot|
      print " ."
      sleep(0.5)
    end
    found
  end

  def self.quit
    puts "If you've lost interest, press q to quit."
    puts "Press y to search again."
    input = gets.chomp.downcase
  end
  def self.picture_output(ascii)
    puts ascii
  end

  def self.search_warning
    puts "Your search input was incorrect!"
  end
end

