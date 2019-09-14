class Scraper
    
    def self.get_initial_data
        doc = Nokogiri::HTML(open("https://www.nass.usda.gov/Quick_Stats/Ag_Overview/stateOverview.php?state=MINNESOTA"))
        doc.css(".heading").each do |category_css|
        commodity = category_css.css(".commodity").text.strip
            doc.css(".dataitem").each do |production_data|
                    #double check on iterating within an iteration?
                planted_all_purpose_acres = production_data.css(".dataitem").text.strip
                    #double check on how to target a specific .dataitem with its respective data?
        #harvested_acres = 
        #iyeld =
        #production =
        #price_per_unit =
        #value_of_production_in_dollars = 
            end
        end
    end
end
 
