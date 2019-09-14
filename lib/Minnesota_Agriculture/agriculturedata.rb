class Agriculture_Data
   attr_accessor :commodity, :planted_all_purpose_acres #:harvested_acres, :iyeld, :production, :price_per_unit, :value_of_production_in_dollars

   @@all = []
   
   def initialize(commodity, planted_all_purpose_acres) #harvested_acres, iyeld, production, price_per_unit, value_of_production_in_dollars)
        @commodity = commodity
        @planted_all_purpose_acres = planted_all_purpose_acres
        #@harvested_acres = harvested_acres
        #@iyeld = iyeld
        #@production = production
        #@price_per_unit = price_per_unit
        #@value_of_production_in_dollars = value_of_production_in_dollars
        @@all << self
   end

   def self.all
    @@all
   end
end
