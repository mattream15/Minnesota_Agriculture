class Scraper
    def self.get_initial_data
        doc = Nokogiri::HTML(open("https://www.nass.usda.gov/Quick_Stats/Ag_Overview/stateOverview.php?state=MINNESOTA"))
        binding.pry
    end


end
 
