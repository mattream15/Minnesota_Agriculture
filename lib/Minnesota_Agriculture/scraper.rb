require 'nokogiri'
require 'open-uri'
require 'pry'
 
doc = Nokogiri::HTML(open("https://www.nass.usda.gov/Quick_Stats/Ag_Overview/stateOverview.php?state=MINNESOTA"))