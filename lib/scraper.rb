require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

doc = Nokogiri::HTML(open("https://www.winespectator.com/dailypicks/category/catid/1/page/1"))
<<<<<<< HEAD
doc_1 = Nokogiri::HTML(open("https://www.winespectator.com/dailypicks/category/catid/2"))
doc_2 = Nokogiri::HTML(open("https://www.winespectator.com/dailypicks/category/catid/3"))
doc_3 = Nokogiri::HTML(open("http://www.wines.com/wine-varietals/"))

wine_name =doc.css('div.daily-wine-items h5 a').first.text
wine_rating_price = doc.css('div.daily-wine-items h6').first.text
wine_notes =  doc.css('div.daily-wine-items div.paragraph').children[0].text.strip
wine_url = doc.css('div.daily-wine-items h5 a').first.attr('href')
=======

wine_name =doc.css('div.daily-wine-items h5 a').first.text
>>>>>>> aae8b20a0dacd97996147d08b425e1493986bfe9

binding.pry


end
