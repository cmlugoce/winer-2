require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

doc = Nokogiri::HTML(open("https://www.winespectator.com/dailypicks/category/catid/1/page/1"))

wine_name =doc.css('div.daily-wine-items h5 a').first.text

binding.pry


end
