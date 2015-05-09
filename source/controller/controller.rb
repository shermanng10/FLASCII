require_relative '../view/view'
require_relative '../models/word_model'
require_relative '../models/flickr_model'
require 'pry'
class Controller
  def start
    View.start
    user_input
  end

  def user_input
  @search_input = View.user_search_prompt
  input_check
  end

  def input_check
    if Word.single_word? (@search_input)
      photo = Flickr.run(@search_input)
      View.loading
      View.picture_output(photo)
      start if View.quit == "y"
     else
      View.search_warning
      start
     end
  end
end

test =  Controller.new()
test.start
