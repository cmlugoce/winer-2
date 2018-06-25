require 'nokogiri'
require 'open-uri'
require 'pry'

class WineR::Wine

attr_accessor :name, :rating_price, :url, :types, :notes
def self.scrape_wine_price_less_15
  wines = self.new
doc = Nokogiri::HTML(open("https://www.winespectator.com/dailypicks/category/catid/1/page/1"))
wines.name = doc.css('div.daily-wine-items h5 a').first.text
wines.rating_price = doc.css('div.daily-wine-items h6').first.text
wines.notes = doc.css('div.daily-wine-items div.paragraph').children[0].text.strip
wines.url = doc.css('div.daily-wine-items h5 a').first.attr('href')

wines
end

def self.scrape_wine_price_15_30

doc_1 = Nokogiri::HTML(open("https://www.winespectator.com/dailypicks/category/catid/2"))
wines = self.new
wines.name = doc_1.css('div.daily-wine-items h5 a').first.text
wines.rating_price = doc_1.css('div.daily-wine-items h6').first.text
wines.notes = doc_1.css('div.daily-wine-items div.paragraph').children[0].text.strip
wines.url = doc_1.css('div.daily-wine-items h5 a').first.attr('href')

wines
end

def self.scrape_wine_price_30
doc_2 = Nokogiri::HTML(open("https://www.winespectator.com/dailypicks/category/catid/3"))
wines = self.new
wines.name = doc_2.css('div.daily-wine-items h5 a').first.text
wines.rating_price= doc_2.css('div.daily-wine-items h6').first.text
wines.notes = doc_2.css('div.daily-wine-items div.paragraph').children[0].text.strip
wines.url = doc_2.css('div.daily-wine-items h5 a').first.attr('href')

wines
end

def self.scrape_types
doc_3 = Nokogiri::HTML(open("http://www.wines.com/wine-varietals/"))

types = doc_3.css('h5')
types each do |type|
  wine = self.new
  wine.name = type.css('h5').text
type
end
end

def self.scrape_wine_types_description
doc_3 = Nokogiri::HTML(open("http://www.wines.com/wine-varietals/"))
types = doc_3.css('p')
types each do |type|
  wine = self.new
  wine.description = type.css('p').text
  type
end

end

def self.list

    self.scrape_wines
  end


  def self.scrape_wines
    wines = []

    wines << self.scrape_wine_price_less_15
    wines << self.scrape_wine_price_15_30
    wines << self.scrape_wine_price_30

    wines
  end

  def self.types
    wines =[]
    wines << self.scrape_types
    wines << self.scrape_wine_types_description

    wines
  end

end
