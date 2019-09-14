class CLI

    def run
        puts "Welcome to Minnesota Agriculture!"
        puts ""
        puts "Please select a crop from the list to view it's details:"
        Scraper.get_initial_data
    end
end