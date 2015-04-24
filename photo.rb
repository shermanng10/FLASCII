require 'flickraw'
require 'asciiart'
require 'date'

FlickRaw.api_key="5fada2f3f3a3a465451515600ae9e3de"
FlickRaw.shared_secret="9ac126c31b35e9f7"

# info = flickr.photos.getInfo(:photo_id => "3839885270")
# asciiphoto = AsciiArt.new(FlickRaw.url_b(info)).to_ascii_art(color: true) # => "https://farm3.static.flickr.com/2485/3839885270_6fb8b54e06_b.jpg"

# # puts asciiphoto

p gallery = flickr.interestingness.getList.first
photo_id1 = gallery['id']

photo2 = flickr.photos.getInfo(:photo_id => photo_id1)
p FlickRaw.url_b(photo2)
asciiphoto2 = AsciiArt.new(FlickRaw.url_b(photo2)).to_ascii_art(color: true) # => "https://farm3.static.flickr.com/2485/3839885270_6fb8b54e06_b.jpg"
#puts asciiphoto2




p dog_photo = flickr.photos.search(:tags => ["chicken"]).first
photo_id3 = dog_photo["id"]
photo_id = flickr.photos.getInfo(:photo_id => photo_id3)
p photo_id
p FlickRaw.url_s(photo_id)
asciiphoto = AsciiArt.new(FlickRaw.url_b(photo_id)).to_ascii_art(color: true)
puts asciiphoto



# puts "Enter a date"
# input = Date.parse gets.chomp
# p date_format = input

# p top_photo =  flickr.interestingness.getList("1141841470").first
# p photo_id_string = top_photo['id']
# p FlickRaw.url_b(photo3)
# p photo3 = flickr.photos.getInfo(:photo_id => photo_id_string)
# asciiphoto3 = AsciiArt.new(FlickRaw.url_b(photo3)).to_ascii_art(color: true) # => "https://farm3.static.flickr.com/2485/3839885270_6fb8b54e06_b.jpg"
# puts asciiphoto3
