class CLI

    def run
        puts "Welcome to Minnesota Agriculture!"
        puts ""
        puts "Please select a crop from the list to view it's details:"
        Scraper.get_initial_data
        menu
    end

    def menu
        Agriculture_Data.all.each_with_index do |row, index|
                puts "#{index + 1}. #{row.crop}"
        end
        puts "Please select a crop by number to view a summary of its production data in Minnesota for 2018."
        input = gets.chomp
        agriculture_data = Agriculture_Data.all[input.to_i - 1]
        puts "Here is the summary for #{row.crop}:"
        puts agriculturedata.planted_all_purpose_acres
        puts agriculturedata.harvested_acres
        puts agriculturedata.iyeld
        puts agriculturedata.production
        puts agriculturedata.price_per_unit
        puts agriculturedata.value_of_production_in_dollars
    end
end