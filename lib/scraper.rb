require 'nokogiri'
require 'open-uri'
require 'pry'

class Wine




doc_3 = Nokogiri::HTML(open("http://www.wines.com/wine-varietals/"))

def self.scrape_wine_price_less_15
  wines = self.new
doc = Nokogiri::HTML(open("https://www.winespectator.com/dailypicks/category/catid/1/page/1"))
wine_name = doc.css('div.daily-wine-items h5 a').first.text
wine_rating_price = doc.css('div.daily-wine-items h6').first.text
wine_notes =  doc.css('div.daily-wine-items div.paragraph').children[0].text.strip
wine_url = doc.css('div.daily-wine-items h5 a').first.attr('href')

wines
end

def self.scrape_wine_price_15_30

doc_1 = Nokogiri::HTML(open("https://www.winespectator.com/dailypicks/category/catid/2"))
wines = self.new
wine_name = doc_1.css('div.daily-wine-items h5 a').first.text
wine_rating_price= doc_1.css('div.daily-wine-items div.paragraph').children[0].text.strip
wine_url = doc_1.css('div.daily-wine-items h5 a').first.attr('href')

wines
end

def self.scrape_wine_price_30
doc_2 = Nokogiri::HTML(open("https://www.winespectator.com/dailypicks/category/catid/3"))
wines = self.new
wine_name = doc_2.css('div.daily-wine-items h5 a').first.text
wine_rating_price= doc_2.css('div.daily-wine-items div.paragraph').children[0].text.strip
wine_url = doc_2.css('div.daily-wine-items h5 a').first.attr('href')

wines
end
end
