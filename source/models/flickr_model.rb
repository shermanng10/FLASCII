require 'flickraw'
require 'asciiart'
require_relative 'flickr_validation_model'

class Flickr

  def run(user_string_input)
    tag_search(user_string_input)
    photo_id
    get_info
    p get_url
    get_ascii
  end

  def tag_search(string)
    @search_item = flickr.photos.search(:tags => string.split(" ")).to_a.sample
  end

  def photo_id
    @id = @search_item["id"]
  end

  def get_info
    flickr.photos.getInfo(:photo_id => @id)
  end

  def get_url
    FlickRaw.url_b(get_info)
  end

  def get_ascii
    asciiphoto = AsciiArt.new(get_url).to_ascii_art(color: true)
    puts asciiphoto
  end
end



