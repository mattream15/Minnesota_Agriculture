class Agriculture_Data
   attr_accessor :crop, :planted_all_purpose_acres, :harvested_acres, :harvested_yield, :production, :price_per_unit, :value_of_production_in_dollars

   @@all = []
   
   def initialize(crop, planted_all_purpose_acres, harvested_acres, harvested_yield, production, price_per_unit, value_of_production_in_dollars)
        @crop = crop
        @planted_all_purpose_acres = planted_all_purpose_acres
        @harvested_acres = harvested_acres
        @harvested_yield = harvested_yield
        @production = production
        @price_per_unit = price_per_unit
        @value_of_production_in_dollars = value_of_production_in_dollars
        @@all << self
   end

   def self.all
    @@all
   end
end
