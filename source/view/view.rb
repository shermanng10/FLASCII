require 'pry'
# require_relative 'controller'
class View
  def self.start
    system "clear"
    print "*"*25 + "\n"
    print "Welcome to FLASCII" + "\n"
    print "*"*25 + "\n"
    print "It searches through Flickr's API" + "\n"
    print "and outputs the searched picture in ASCII form." +"\n"
    puts ""
  end

  def self.user_search_prompt
    print "please enter a search tag: "
    gets.chomp
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
    print "\n \n"
    puts "Your search input was INCORRECT!"
    sleep(2.5)
  end
end
