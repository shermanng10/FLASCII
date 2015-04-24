require_relative 'view '
require_relative 'Word'

 class Controller

def start
  View.start
end

def user_input
search_input =View.user_search_prompt
end

def input_check
  if Word.word? (user_input)
      photo = Flickr.run(user_input)
      View.loading
      View.picture_output(photo)
      run_program if View.quit == "y"
   else
     View.search_warning
     run_program
   end
end

def run_program
  start
  user_input
  input_check
end


end

test =  Controller.new()
test.run_program

