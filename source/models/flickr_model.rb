require 'flickraw'
require 'asciiart'
require_relative 'flickr_validation_model'

class Flickr

  def self.run(user_string_input)
    self.tag_search(user_string_input)
    self.photo_id
    self.get_info
    p self.get_url
    self.get_ascii
  end

  def self.tag_search(string)
    @search_item = flickr.photos.search(:tags => string.split(" ")).to_a.sample
  end

  def self.photo_id
    @id = @search_item["id"]
  end

  def self.get_info
    flickr.photos.getInfo(:photo_id => @id)
  end

  def self.get_url
    FlickRaw.url_b(get_info)
  end

  def self.get_ascii
    asciiphoto = AsciiArt.new(get_url).to_ascii_art(color: true)
    # puts asciiphoto
  end
end



