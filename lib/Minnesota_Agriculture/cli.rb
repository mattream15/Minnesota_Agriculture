class CLI

    def run
        puts "Welcome to Minnesota Agriculture!"
        puts ""
        puts "Please select a crop from the list to view it's details:"
        puts "Loading..."
        Scraper.get_initial_data
        menu
    end

    def menu
        Agriculture_Data.all.each_with_index do |row, index|
            puts "#{index + 1}. #{row.crop}"
        end
        puts ""
        puts "Please select a crop by number to view a summary of its production data in Minnesota for 2018."
        puts ""
        input = gets.chomp
        if input.to_i > Agriculture_Data.all.size || input.to_i <= 0
            puts ""
            puts "That is an invalid number"
            puts ""
            menu
        else
        agriculture_data = Agriculture_Data.all[input.to_i - 1]
        puts ""
        puts "Here is the summary for #{agriculture_data.crop}:"
        if agriculture_data.planted_all_purpose_acres == ""
            puts "Planted All Purpose Acres = N/A"
        else
            puts "Planted All Purpose Acres = #{agriculture_data.planted_all_purpose_acres}"
        end
        if agriculture_data.harvested_acres == ""
            puts "Harvested Acres = N/A"
        else
            puts "Harvested Acres = #{agriculture_data.harvested_acres}"
        end
        if agriculture_data.harvested_yield == ""
            puts "Harvested Yield = N/A"
        else
            puts "Harvested Yield = #{agriculture_data.harvested_yield}"
        end
        if agriculture_data.production == ""
            puts "Production = N/A"
        else
            puts "Production = #{agriculture_data.production}"
        end
        if agriculture_data.price_per_unit == ""
            puts "Price per Unit = N/A"
        else
            puts "Price per Unit = #{agriculture_data.price_per_unit}"
        end
        if agriculture_data.value_of_production_in_dollars == ""
            puts "Value of Production in Dollars = N/A"
        else
            puts "Value of Production in Dollars = #{agriculture_data.value_of_production_in_dollars}"
        end
        puts ""
        exit_gem
        end
    end

    def exit_gem
        puts "Would you like to 'select another crop' or would you like to 'exit the gem'?"
        answer = gets.chomp
        if answer == "select another crop"
            puts ""
            menu
        elsif answer == "exit the gem"
        return nil
        else
            puts "That is an invalid answer"
            puts ""
            exit_gem
        end
    end
end