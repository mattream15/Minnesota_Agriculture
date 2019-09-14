class Scraper
    
    def self.get_initial_data
        doc = Nokogiri::HTML(open("https://www.nass.usda.gov/Quick_Stats/Ag_Overview/stateOverview.php?state=MINNESOTA"))
        doc.css(".heading").each do |category_css|
        commodity = category_css.css(".commodity").text.strip
        binding.pry
        #commodity.css(".commodity").each do |production_data|
        #planted_all_purpose_acres = production_data.css(".dataitem").text.strip
        #harvested_acres = 
        #iyeld =
        #production =
        #price_per_unit =
        #value_of_production_in_dollars = 
        end
    end
end
 
