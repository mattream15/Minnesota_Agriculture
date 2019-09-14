class CLI

    def run
        puts "Welcome to Minnesota Agriculture!"
        puts ""
        puts "Please select a crop from the list to view it's details:"
        Scraper.get_initial_data
        menu
    end

    def menu
        Agriculture_Data.all.each_with_index do |category, index|
            puts "#{index + 1}. #{category.commodity}"
        end
    end
end