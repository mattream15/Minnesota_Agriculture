class Scraper
    
    def self.get_initial_data
        doc = Nokogiri::HTML(open("https://www.nass.usda.gov/Quick_Stats/Ag_Overview/stateOverview.php?state=MINNESOTA"))
        doc.css(".datarow").each do |category_css|
            crop = category_css.css(".commodity").text.strip
            planted_all_purpose_acres = category_css.css(".dataitem")[0].text.strip
            harvested_acres = category_css.css(".dataitem")[1].text.strip
            harvested_yield = category_css.css(".dataitem")[2].text.strip
            production = category_css.css(".dataitem")[3].text.strip
            price_per_unit = category_css.css(".dataitem")[4].text.strip
            value_of_production_in_dollars = category_css.css(".dataitem")[5].text.strip
            Agriculture_Data.new(crop, planted_all_purpose_acres, harvested_acres, harvested_yield, production, price_per_unit, value_of_production_in_dollars)
        end
    end
end
 
