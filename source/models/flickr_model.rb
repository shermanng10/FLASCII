require 'flickraw'
require 'asciiart'
require_relative 'flickr_validation_model'

class Flickr

  def run(user_string_input)
    tag_search(user_string_input)
    photo_id
    get_info
    get_url
  end

  def tag_search(string)
    @search_item = flickr.photos.search(:tags => string).first
  end

  def photo_id
    @id = @search_item["id"]
  end

  def get_info
    flickr.photos.getInfo(:photo_id => @id)
  end

  def get_url
    asciiphoto = AsciiArt.new(FlickRaw.url_b(get_info)).to_ascii_art(color: true)
  end
end


